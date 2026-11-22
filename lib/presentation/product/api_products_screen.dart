// lib/presentation/product/api_products_screen.dart
//
// CRUD produk ke DummyJSON memakai endpoint /auth/products (wajib Bearer
// token hasil login yang diambil dari SharedPreferences):
//   GET    /auth/products         → daftar (Read)
//   POST   /auth/products/add     → tambah (Create)
//   PUT    /auth/products/{id}    → ubah   (Update)
//   DELETE /auth/products/{id}    → hapus  (Delete)
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

import '../../core/auth/auth_state.dart';
import '../../core/utils/validation_utils.dart';
import '../../data/models/api_models.dart';
import '../../data/services/api_client.dart';
import '../../data/services/product_service.dart';

class ApiProductsScreen extends ConsumerStatefulWidget {
  const ApiProductsScreen({super.key});

  @override
  ConsumerState<ApiProductsScreen> createState() => _ApiProductsScreenState();
}

class _ApiProductsScreenState extends ConsumerState<ApiProductsScreen> {
  static const _pageSize = 20;

  final _searchController = TextEditingController();
  final List<ApiProduct> _products = [];

  /// Produk hasil POST. DummyJSON tidak benar-benar menyimpannya, jadi
  /// PUT/DELETE ke id ini akan 404 → perubahan cukup diterapkan secara lokal.
  final Set<int> _createdLocally = {};

  /// Jumlah produk yang sudah diambil dari server & total di server (untuk paginasi).
  int _fetched = 0;
  int _serverTotal = 0;
  bool _loading = true;
  bool _loadingMore = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------- READ (GET)
  Future<void> _load({bool more = false}) async {
    setState(() {
      if (more) {
        _loadingMore = true;
      } else {
        _loading = true;
        _error = null;
      }
    });
    try {
      final page = await ProductService.fetchApiProducts(
        limit: _pageSize,
        skip: more ? _fetched : 0,
        query: _searchController.text,
      );
      if (!mounted) return;
      setState(() {
        if (!more) {
          _products.removeWhere((p) => !_createdLocally.contains(p.id));
          _fetched = 0;
        }
        _products.addAll(page.products);
        _fetched += page.products.length;
        _serverTotal = page.total;
      });
    } on ApiException catch (e) {
      if (!mounted) return;
      if (e.isUnauthorized) return _sessionExpired();
      if (more) {
        _snack(e.message, error: true);
      } else {
        setState(() => _error = e.message);
      }
    } finally {
      if (mounted) setState(() => _loading = _loadingMore = false);
    }
  }

  // ------------------------------------------------------------- CREATE (POST)
  Future<void> _create() async {
    final data = await _openForm();
    if (data == null) return;
    await _run(() async {
      final created = await ProductService.createApiProduct(data);
      setState(() {
        _createdLocally.add(created.id);
        _products.insert(0, created);
      });
      _snack('Produk "${created.title}" ditambahkan (id ${created.id})');
    });
  }

  // -------------------------------------------------------------- UPDATE (PUT)
  Future<void> _edit(ApiProduct product) async {
    final data = await _openForm(initial: product);
    if (data == null) return;
    await _run(() async {
      ApiProduct updated;
      try {
        updated = await ProductService.updateApiProduct(product.id, data);
      } on ApiException catch (e) {
        if (!(e.isNotFound && _createdLocally.contains(product.id))) rethrow;
        updated = product.copyWith(
          title: data['title'] as String,
          description: data['description'] as String,
          price: data['price'] as num,
          stock: data['stock'] as int,
          category: data['category'] as String,
          brand: data['brand'] as String?,
        );
      }
      setState(() {
        final i = _products.indexWhere((p) => p.id == product.id);
        if (i != -1) _products[i] = updated;
      });
      _snack('Produk "${updated.title}" diperbarui');
    });
  }

  // ----------------------------------------------------------- DELETE (DELETE)
  Future<void> _delete(ApiProduct product) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Hapus Produk'),
        content: Text('Hapus "${product.title}"?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Batal')),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Theme.of(ctx).colorScheme.error),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Hapus'),
          ),
        ],
      ),
    );
    if (ok != true) return;

    await _run(() async {
      bool deleted;
      try {
        deleted = await ProductService.deleteApiProduct(product.id);
      } on ApiException catch (e) {
        if (!(e.isNotFound && _createdLocally.contains(product.id))) rethrow;
        deleted = true;
      }
      if (!deleted) throw const ApiException('Server tidak mengonfirmasi penghapusan');
      setState(() {
        _products.removeWhere((p) => p.id == product.id);
        _createdLocally.remove(product.id);
      });
      _snack('Produk "${product.title}" dihapus');
    });
  }

  // ------------------------------------------------------------------ helpers
  /// Jalankan aksi tulis dengan loading overlay & penanganan error.
  Future<void> _run(Future<void> Function() action) async {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => const PopScope(canPop: false, child: Center(child: CircularProgressIndicator())),
    );
    var dialogOpen = true;
    void closeDialog() {
      if (dialogOpen && mounted) Navigator.of(context, rootNavigator: true).pop();
      dialogOpen = false;
    }

    try {
      await action();
      closeDialog();
    } on ApiException catch (e) {
      closeDialog();
      if (e.isUnauthorized) return _sessionExpired();
      _snack(e.message, error: true);
    } catch (e) {
      closeDialog();
      _snack('Terjadi kesalahan: $e', error: true);
    }
  }

  Future<void> _sessionExpired() async {
    _snack('Sesi berakhir, silakan login kembali', error: true);
    await ref.read(authStateProvider.notifier).logout();
    if (mounted) context.go('/auth/login');
  }

  void _snack(String msg, {bool error = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(msg),
        backgroundColor: error ? Theme.of(context).colorScheme.error : null,
      ));
  }

  Future<Map<String, dynamic>?> _openForm({ApiProduct? initial}) {
    return Navigator.of(context).push<Map<String, dynamic>>(
      MaterialPageRoute(fullscreenDialog: true, builder: (_) => ApiProductFormScreen(initial: initial)),
    );
  }

  // ---------------------------------------------------------------------- UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk (DummyJSON)')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _loading ? null : _create,
        icon: const Icon(AppIcons.plus),
        label: const Text('Tambah'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextField(
              controller: _searchController,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: 'Cari produk...',
                prefixIcon: const Icon(AppIcons.magnifyingGlass),
                suffixIcon: IconButton(
                  icon: const Icon(AppIcons.x),
                  onPressed: () {
                    _searchController.clear();
                    _load();
                  },
                ),
              ),
              onSubmitted: (_) => _load(),
            ),
          ),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) return const Center(child: CircularProgressIndicator());
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(AppIcons.warningCircle, size: 48, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 12),
              Text(_error!, textAlign: TextAlign.center),
              const SizedBox(height: 12),
              FilledButton.tonal(onPressed: _load, child: const Text('Coba Lagi')),
            ],
          ),
        ),
      );
    }
    if (_products.isEmpty) return const Center(child: Text('Tidak ada produk'));

    final hasMore = _fetched < _serverTotal;
    return RefreshIndicator(
      onRefresh: _load,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 96),
        itemCount: _products.length + (hasMore ? 1 : 0),
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          if (i == _products.length) {
            return Center(
              child: _loadingMore
                  ? const Padding(padding: EdgeInsets.all(12), child: CircularProgressIndicator())
                  : TextButton(onPressed: () => _load(more: true), child: const Text('Muat lebih banyak')),
            );
          }
          final p = _products[i];
          return _ProductTile(product: p, onEdit: () => _edit(p), onDelete: () => _delete(p));
        },
      ),
    );
  }
}

class _ProductTile extends StatelessWidget {
  final ApiProduct product;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  const _ProductTile({required this.product, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final thumb = product.thumbnail;
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(12, 4, 4, 4),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            width: 52,
            height: 52,
            child: thumb == null
                ? ColoredBox(color: theme.colorScheme.surfaceContainerHighest, child: const Icon(AppIcons.image))
                : CachedNetworkImage(
                    imageUrl: thumb,
                    fit: BoxFit.cover,
                    errorWidget: (_, _, _) => const Icon(AppIcons.image),
                  ),
          ),
        ),
        title: Text(product.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text(
          '\$${product.price} · Stok ${product.stock}${product.category.isEmpty ? '' : ' · ${product.category}'}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: onEdit,
        trailing: PopupMenuButton<String>(
          onSelected: (v) => v == 'edit' ? onEdit() : onDelete(),
          itemBuilder: (_) => const [
            PopupMenuItem(value: 'edit', child: ListTile(leading: Icon(AppIcons.pencil), title: Text('Edit'))),
            PopupMenuItem(value: 'delete', child: ListTile(leading: Icon(AppIcons.x), title: Text('Hapus'))),
          ],
        ),
      ),
    );
  }
}

/// Form tambah/ubah produk. Mengembalikan body JSON untuk POST/PUT.
class ApiProductFormScreen extends StatefulWidget {
  final ApiProduct? initial;
  const ApiProductFormScreen({super.key, this.initial});

  @override
  State<ApiProductFormScreen> createState() => _ApiProductFormScreenState();
}

class _ApiProductFormScreenState extends State<ApiProductFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final _title = TextEditingController(text: widget.initial?.title);
  late final _description = TextEditingController(text: widget.initial?.description);
  late final _price = TextEditingController(text: widget.initial?.price.toString());
  late final _stock = TextEditingController(text: widget.initial?.stock.toString());
  late final _category = TextEditingController(text: widget.initial?.category);
  late final _brand = TextEditingController(text: widget.initial?.brand);

  @override
  void dispose() {
    for (final c in [_title, _description, _price, _stock, _category, _brand]) {
      c.dispose();
    }
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final brand = _brand.text.trim();
    Navigator.pop<Map<String, dynamic>>(context, {
      'title': _title.text.trim(),
      'description': _description.text.trim(),
      'price': num.parse(_price.text.trim().replaceAll(',', '.')),
      'stock': int.parse(_stock.text.trim()),
      'category': _category.text.trim(),
      'brand': brand.isEmpty ? null : brand,
    });
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.initial != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Produk #${widget.initial!.id}' : 'Tambah Produk'),
        actions: [TextButton(onPressed: _submit, child: const Text('Simpan'))],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _title,
              decoration: const InputDecoration(labelText: 'Nama Produk'),
              textInputAction: TextInputAction.next,
              validator: (v) => validateRequired(v, 'Nama produk'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _description,
              decoration: const InputDecoration(labelText: 'Deskripsi'),
              minLines: 2,
              maxLines: 5,
              validator: (v) => validateRequired(v, 'Deskripsi'),
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _price,
                    decoration: const InputDecoration(labelText: 'Harga (USD)', prefixText: '\$ '),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    textInputAction: TextInputAction.next,
                    validator: validateDecimalPrice,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _stock,
                    decoration: const InputDecoration(labelText: 'Stok'),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    validator: validateStock,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _category,
              decoration: const InputDecoration(labelText: 'Kategori', hintText: 'contoh: smartphones'),
              textInputAction: TextInputAction.next,
              validator: (v) => validateRequired(v, 'Kategori'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _brand,
              decoration: const InputDecoration(labelText: 'Merek (opsional)'),
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: _submit,
              icon: const Icon(AppIcons.check),
              label: Text(isEdit ? 'Simpan Perubahan (PUT)' : 'Tambah Produk (POST)'),
            ),
          ],
        ),
      ),
    );
  }
}
