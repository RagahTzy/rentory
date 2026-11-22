// lib/presentation/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';
import '../../core/utils/format_utils.dart';
import '../../core/utils/location_utils.dart';
import '../../data/models/product.dart';
import '../../data/models/vendor.dart';
import '../../data/services/product_service.dart';
import '../../data/mock/vendor_mock.dart';
import '../shared/product_image.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentIndex = 0;
  /// Slug kategori DummyJSON yang dipilih; null = semua.
  String? _selectedCategory;

  /// Jumlah barang yang ditampilkan di "Barang Populer" (sisanya lewat Cari).
  static const _popularCount = 20;

  // Mock user location (Bandung center)
  final double _userLat = -6.9175;
  final double _userLng = 107.6191;

  @override
  Widget build(BuildContext context) {
    // Katalog dari API DummyJSON (GET /auth/products + /auth/products/categories).
    final catalog = ref.watch(catalogProvider);
    final vendors = getActiveVendors();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rentory'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.magnifyingGlass),
            onPressed: () => context.go('/search'),
          ),
          IconButton(
            icon: const Icon(AppIcons.bell),
            onPressed: () => context.go('/notifications'),
          ),
          IconButton(
            icon: const Icon(AppIcons.user),
            onPressed: () => context.go('/profile'),
          ),
        ],
      ),
      body: catalog.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => ApiErrorView(error: e, onRetry: () => ref.invalidate(catalogProvider)),
        data: (data) => RefreshIndicator(
          onRefresh: () => ref.refresh(catalogProvider.future),
          child: _currentIndex == 0 ? _buildHomeTab(data, vendors) : _buildCategoriesTab(data.categories),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(AppIcons.house), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(AppIcons.gridFour), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(AppIcons.bag), label: 'Sewa Saya'),
          BottomNavigationBarItem(icon: Icon(AppIcons.chatCircle), label: 'Chat'),
        ],
      ),
    );
  }

  Widget _buildHomeTab(Catalog catalog, List<Vendor> vendors) {
    final categories = catalog.categories;
    final products = catalog.available
        .where((p) => _selectedCategory == null || p.categoryId == _selectedCategory)
        .toList()
      ..sort((a, b) => b.ratingRata.compareTo(a.ratingRata));
    final shown = products.take(_popularCount).toList();

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search bar
          GestureDetector(
            onTap: () => context.go('/search'),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(AppIcons.magnifyingGlass, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
                  const SizedBox(width: 12),
                  Text(
                    'Cari barang, toko, atau kategori...',
                    style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Category chips
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length + 1,
              itemBuilder: (context, index) {
                final cat = index == 0 ? null : categories[index - 1];
                final selected = cat?.id == _selectedCategory;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(cat?.nama ?? 'Semua'),
                    selected: selected,
                    onSelected: (_) => setState(() => _selectedCategory = cat?.id),
                    selectedColor: Theme.of(context).colorScheme.primaryContainer,
                    labelStyle: TextStyle(
                      color: selected ? Theme.of(context).colorScheme.primary : null,
                      fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // Nearby vendors
          if (vendors.isNotEmpty) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Toko Terdekat', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
                TextButton(onPressed: () {}, child: const Text('Lihat Semua')),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: vendors.length,
                itemBuilder: (context, index) {
                  final vendor = vendors[index];
                  final distance = haversineKm(_userLat, _userLng, vendor.latitude, vendor.longitude);
                  return _buildVendorCard(vendor, distance);
                },
              ),
            ),
            const SizedBox(height: 24),
          ],

          // Products
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Barang Populer', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
              TextButton(onPressed: () => context.go('/search'), child: const Text('Lihat Semua')),
            ],
          ),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.72,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: shown.length,
            itemBuilder: (context, index) => _buildProductCard(shown[index]),
          ),
          if (shown.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(child: Text('Belum ada barang di kategori ini')),
            ),
        ],
      ),
    );
  }

  Widget _buildCategoriesTab(List<Category> categories) {
    return GridView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final cat = categories[index];
        return _CategoryCard(name: cat.nama, onTap: () {
          setState(() {
            _selectedCategory = cat.id;
            _currentIndex = 0;
          });
        });
      },
    );
  }

  Widget _buildVendorCard(Vendor vendor, double distance) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header mengisi sisa tinggi kartu (dulu fix 80px sehingga total
            // isi > tinggi list 160px dan terjadi RenderFlex overflow).
            Expanded(
              child: Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Center(
                  child: Icon(AppIcons.storefront, size: 32, color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vendor.namaToko, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600), maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(AppIcons.mapPin, size: 12, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6)),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '${formatDistance(distance)} • ${vendor.kota}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(AppIcons.star, size: 12, color: Colors.amber),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '${vendor.ratingRata} (${vendor.totalReview})',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(Product product) {
    final vendor = getVendorById(product.vendorId);
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.go('/product/${product.id}'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16/10,
              child: ProductImage.of(product),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.nama, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600), maxLines: 2, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  if (vendor != null)
                    Text(vendor.namaToko, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6)), maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(AppIcons.star, size: 12, color: Colors.amber),
                      const SizedBox(width: 2),
                      Text('${product.ratingRata}', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(width: 8),
                      Text('${product.totalReview} review', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${formatCurrency(product.hargaPerHari)}/hari',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const _CategoryCard({required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Theme.of(context).colorScheme.primaryContainer, Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(AppIcons.package, size: 40, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 12),
              Text(name, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}