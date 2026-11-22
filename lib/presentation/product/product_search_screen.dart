// lib/presentation/product/product_search_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../core/utils/format_utils.dart';
import '../../data/services/product_service.dart';
import '../../data/mock/vendor_mock.dart';
import '../../presentation/product/product_detail_screen.dart';

class ProductSearchScreen extends ConsumerStatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  ConsumerState<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends ConsumerState<ProductSearchScreen> {
  final _searchController = TextEditingController();
  String _query = '';
  String _selectedCategory = 'Semua';
  int _minPrice = 0;
  int _maxPrice = 5000000;
  String _sortBy = 'rating';
  double _radiusKm = 10;
  final List<String> _categories = ['Semua', 'Kamera & Video', 'Outdoor & Camping', 'Elektronik', 'Fashion', 'Alat Bangun', 'Kendaraan'];
  final List<String> _sortOptions = ['Rating Tertinggi', 'Harga Termurah', 'Harga Termahal', 'Terdekat'];
  final List<String> _sortValues = ['rating', 'harga_asc', 'harga_desc', 'jarak'];
  
  // Mock user location
  final double _userLat = -6.9175;
  final double _userLng = 107.6191;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Product> _getFilteredProducts() {
    var products = ProductService.getAvailableProducts();
    
    // Search query
    if (_query.isNotEmpty) {
      products = ProductService.searchProducts(_query);
    }
    
    // Category filter
    if (_selectedCategory != 'Semua') {
      final catMap = {
        'Kamera & Video': 'cat_001',
        'Outdoor & Camping': 'cat_002',
        'Elektronik': 'cat_003',
        'Fashion': 'cat_004',
        'Alat Bangun': 'cat_005',
        'Kendaraan': 'cat_006',
      };
      if (catMap[_selectedCategory] != null) {
        products = products.where((p) => p.categoryId == catMap[_selectedCategory]).toList();
      }
    }
    
    // Price filter
    products = products.where((p) => p.hargaPerHari >= _minPrice && p.hargaPerHari <= _maxPrice).toList();
    
    // Sort
    switch (_sortBy) {
      case 'rating':
        products.sort((a, b) => b.ratingRata.compareTo(a.ratingRata));
        break;
      case 'harga_asc':
        products.sort((a, b) => a.hargaPerHari.compareTo(b.hargaPerHari));
        break;
      case 'harga_desc':
        products.sort((a, b) => b.hargaPerHari.compareTo(a.hargaPerHari));
        break;
      case 'jarak':
        // Need vendor distance - simplified
        break;
    }
    
    return products;
  }

  @override
  Widget build(BuildContext context) {
    final products = _getFilteredProducts();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari Barang'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Cari nama barang...',
                prefixIcon: const Icon(PhosphorIcons.magnifyingGlass),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(icon: const Icon(PhosphorIcons.x), onPressed: () {
                        _searchController.clear();
                        setState(() => _query = '');
                      })
                    : null,
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (v) => setState(() => _query = v),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Filter chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _FilterChip(
                  label: _selectedCategory,
                  icon: PhosphorIcons.funnel,
                  onTap: _showCategoryFilter,
                ),
                const SizedBox(width: 8),
                _FilterChip(
                  label: '${formatCurrencyShort(_minPrice)} - ${formatCurrencyShort(_maxPrice)}',
                  icon: PhosphorIcons.currencyCircleDollar,
                  onTap: _showPriceFilter,
                ),
                const SizedBox(width: 8),
                _FilterChip(
                  label: _sortBy == 'jarak' ? '${_radiusKm.toInt()}km' : _sortOptions[_sortValues.indexOf(_sortBy)],
                  icon: _sortBy == 'jarak' ? PhosphorIcons.mapPin : PhosphorIcons.arrowsUpDown,
                  onTap: _showSortFilter,
                ),
              ],
            ),
          ),
          
          // Results
          Expanded(
            child: products.isEmpty
                ? _buildEmptyState()
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.72,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) => _buildProductCard(products[index]),
                  ),
          ),
        ],
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
              child: Container(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: product.foto.isNotEmpty
                    ? Image.asset(product.foto.first, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Icon(PhosphorIcons.image, size: 32, color: Colors.grey))
                    : Icon(PhosphorIcons.package, size: 32, color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.nama, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600), maxLines: 2, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  if (vendor != null)
                    Text(vendor.namaToko, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)), maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(PhosphorIcons.star, size: 12, color: Colors.amber),
                      const SizedBox(width: 2),
                      Text('${product.ratingRata}', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(width: 8),
                      Text('${product.totalReview}', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    formatCurrency(product.hargaPerHari) + '/hari',
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

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(PhosphorIcons.magnifyingGlass, size: 64, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3)),
          const SizedBox(height: 16),
          Text('Tidak ada barang ditemukan', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('Coba ubah filter atau kata kunci pencarian', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
        ],
      ),
    );
  }

  void _showCategoryFilter() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kategori', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _categories.map((cat) => FilterChip(
                label: Text(cat),
                selected: _selectedCategory == cat,
                onSelected: (_) => setState(() { _selectedCategory = cat; Navigator.pop(context); }),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }

  void _showPriceFilter() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Filter Harga', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 20),
            RangeSlider(
              values: RangeValues(_minPrice.toDouble(), _maxPrice.toDouble()),
              min: 0,
              max: 5000000,
              divisions: 50,
              labels: RangeLabels(formatCurrencyShort(_minPrice), formatCurrencyShort(_maxPrice)),
              onChanged: (v) => setState(() { _minPrice = v.start.round(); _maxPrice = v.end.round(); }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min: ${formatCurrency(_minPrice)}'),
                Text('Max: ${formatCurrency(_maxPrice)}'),
              ],
            ),
            const SizedBox(height: 16),
            FilledButton(onPressed: () => Navigator.pop(context), child: const Text('Terapkan')),
          ],
        ),
      ),
    );
  }

  void _showSortFilter() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Urutkan', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
            ..._sortOptions.asMap().entries.map((e) => RadioListTile<String>(
              title: Text(e.value),
              value: _sortValues[e.key],
              groupValue: _sortBy,
              onChanged: (v) {
                if (v != null) {
                  setState(() => _sortBy = v);
                  Navigator.pop(context);
                }
              },
            )),
            if (_sortBy == 'jarak') ...[
              const SizedBox(height: 16),
              Text('Radius: ${_radiusKm.toInt()} km'),
              Slider(
                value: _radiusKm,
                min: 1,
                max: 50,
                divisions: 49,
                onChanged: (v) => setState(() => _radiusKm = v),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _FilterChip({required this.label, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      onPressed: onTap,
    );
  }
}