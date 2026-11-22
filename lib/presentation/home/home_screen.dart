// lib/presentation/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../core/utils/format_utils.dart';
import '../../data/services/product_service.dart';
import '../../data/mock/vendor_mock.dart';
import '../../presentation/product/product_detail_screen.dart';
import '../../presentation/product/product_search_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentIndex = 0;
  String _selectedCategory = 'Semua';
  final List<String> _categories = ['Semua', 'Kamera & Video', 'Outdoor & Camping', 'Elektronik', 'Fashion', 'Alat Bangun', 'Kendaraan'];
  
  // Mock user location (Bandung center)
  final double _userLat = -6.9175;
  final double _userLng = 107.6191;

  @override
  Widget build(BuildContext context) {
    final products = ProductService.getAvailableProducts();
    final vendors = getActiveVendors();
    
    // Filter by category
    var filteredProducts = products;
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
        filteredProducts = products.where((p) => p.categoryId == catMap[_selectedCategory]).toList();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rentory'),
        actions: [
          IconButton(
            icon: const Icon(PhosphorIcons.magnifyingGlass),
            onPressed: () => context.go('/search'),
          ),
          IconButton(
            icon: const Icon(PhosphorIcons.bell),
            onPressed: () => context.go('/notifications'),
          ),
          IconButton(
            icon: const Icon(PhosphorIcons.user),
            onPressed: () => context.go('/profile'),
          ),
        ],
      ),
      body: _currentIndex == 0 ? _buildHomeTab(filteredProducts, vendors) : _buildCategoriesTab(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(PhosphorIcons.house), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(PhosphorIcons.gridFour), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(PhosphorIcons.bag), label: 'Sewa Saya'),
          BottomNavigationBarItem(icon: Icon(PhosphorIcons.chatCircle), label: 'Chat'),
        ],
      ),
    );
  }

  Widget _buildHomeTab(List<Product> products, List<Vendor> vendors) {
    return SingleChildScrollView(
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
                  Icon(PhosphorIcons.magnifyingGlass, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
                  const SizedBox(width: 12),
                  Text(
                    'Cari barang, toko, atau kategori...',
                    style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
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
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final cat = _categories[index];
                final selected = cat == _selectedCategory;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(cat),
                    selected: selected,
                    onSelected: (_) => setState(() => _selectedCategory = cat),
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
            itemCount: products.length,
            itemBuilder: (context, index) => _buildProductCard(products[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesTab() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: _categories.length - 1, // exclude 'Semua'
      itemBuilder: (context, index) {
        final cat = _categories[index + 1];
        return _CategoryCard(name: cat, onTap: () {
          setState(() {
            _selectedCategory = cat;
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
            Container(
              height: 80,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Center(
                child: Icon(PhosphorIcons.storefront, size: 32, color: Theme.of(context).colorScheme.primary),
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
                      Icon(PhosphorIcons.mapPin, size: 12, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                      const SizedBox(width: 4),
                      Text('${formatDistance(distance)} • ${vendor.kota}', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(PhosphorIcons.star, size: 12, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text('${vendor.ratingRata} (${vendor.totalReview})', style: Theme.of(context).textTheme.bodySmall),
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
                      Text('${product.totalReview} review', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
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
              colors: [Theme.of(context).colorScheme.primaryContainer, Theme.of(context).colorScheme.primary.withOpacity(0.1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(PhosphorIcons.package, size: 40, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 12),
              Text(name, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}