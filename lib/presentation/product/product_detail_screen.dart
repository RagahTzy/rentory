// lib/presentation/product/product_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../core/utils/format_utils.dart';
import '../../data/services/product_service.dart';
import '../../data/mock/vendor_mock.dart';
import '../../presentation/booking/booking_create_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final String productId;
  const ProductDetailScreen({super.key, required this.productId});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final product = ProductService.getProductById(widget.productId);
    if (product == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Produk Tidak Ditemukan')),
        body: const Center(child: Text('Produk tidak ditemukan')),
      );
    }

    final vendor = getVendorById(product.vendorId);
    final category = ProductService.getCategoryById(product.categoryId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.nama, maxLines: 1, overflow: TextOverflow.ellipsis),
        actions: [
          IconButton(icon: const Icon(PhosphorIcons.heart), onPressed: () {}),
          IconButton(icon: const Icon(PhosphorIcons.share), onPressed: () {}),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(context, product, vendor),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Gallery
            _buildImageGallery(product),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title & Rating
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.nama, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
                            const SizedBox(height: 4),
                            if (vendor != null) ...[
                              Row(
                                children: [
                                  Icon(PhosphorIcons.storefront, size: 16, color: Theme.of(context).colorScheme.primary),
                                  const SizedBox(width: 4),
                                  Text(vendor.namaToko, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500)),
                                ],
                              ),
                              const SizedBox(height: 4),
                            ],
                            Row(
                              children: [
                                Icon(PhosphorIcons.star, size: 16, color: Colors.amber),
                                const SizedBox(width: 4),
                                Text('${product.ratingRata}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600)),
                                const SizedBox(width: 8),
                                Text('(${product.totalReview} review)', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
                                const SizedBox(width: 16),
                                if (vendor != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: vendor.isActive ? Colors.green.withOpacity(0.1) : Colors.orange.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      vendor.isActive ? 'Aktif' : 'Menunggu Verifikasi',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: vendor.isActive ? Colors.green : Colors.orange,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Price & Duration Options
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Harga Sewa', style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7))),
                                Text(
                                  formatCurrency(product.hargaPerHari),
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('/ hari', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7))),
                                if (product.hargaPerJam != null)
                                  Text(
                                    '${formatCurrency(product.hargaPerJam!)}/jam',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7)),
                                  ),
                                if (product.hargaPerMinggu > 0)
                                  Text(
                                    '${formatCurrency(product.hargaPerMinggu)}/minggu',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7)),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        if (product.hargaPerJam != null || product.hargaPerMinggu > 0) ...[
                          const SizedBox(height: 12),
                          const Divider(height: 1),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _PriceOption(label: 'Per Jam', price: formatCurrency(product.hargaPerJam ?? 0)),
                              _PriceOption(label: 'Per Hari', price: formatCurrency(product.hargaPerHari)),
                              _PriceOption(label: 'Per Minggu', price: formatCurrency(product.hargaPerMinggu)),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Description
                  Text('Deskripsi', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(product.deskripsi, style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 16),

                  // Special Rules
                  if (product.aturanKhusus != null && product.aturanKhusus!.isNotEmpty) ...[
                    Text('Aturan Khusus', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.amber.withOpacity(0.3)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(PhosphorIcons.warning, size: 20, color: Colors.amber.shade700),
                          const SizedBox(width: 8),
                          Expanded(child: Text(product.aturanKhusus!, style: Theme.of(context).textTheme.bodyMedium)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],

                  // Vendor Info
                  if (vendor != null) ...[
                    Text('Info Toko', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 12),
                    _VendorInfoCard(vendor: vendor),
                    const SizedBox(height: 16),
                  ],

                  // Category
                  if (category != null) ...[
                    Row(
                      children: [
                        Icon(PhosphorIcons.tag, size: 18, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                        const SizedBox(width: 8),
                        Text('Kategori: ${category.nama}', style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery(Product product) {
    if (product.foto.isEmpty) {
      return Container(
        height: 280,
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: Center(child: Icon(PhosphorIcons.package, size: 64, color: Theme.of(context).colorScheme.primary)),
      );
    }

    return Stack(
      children: [
        SizedBox(
          height: 280,
          child: PageView.builder(
            itemCount: product.foto.length,
            onPageChanged: (i) => setState(() => _currentImageIndex = i),
            itemBuilder: (context, index) {
              return Image.asset(
                product.foto[index],
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (_, __, ___) => Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: Center(child: Icon(PhosphorIcons.image, size: 64, color: Colors.grey)),
                ),
              );
            },
          ),
        ),
        if (product.foto.length > 1)
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                product.foto.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentImageIndex == index ? Colors.white : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBottomBar(BuildContext context, Product product, Vendor? vendor) {
    if (vendor == null || !vendor.isActive || !product.isAvailable) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: null,
                child: Text(product.status == 'maintenance' ? 'Maintenance' : 'Tidak Tersedia'),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, -2))],
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => context.go('/chat?vendorId=${vendor.id}'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(PhosphorIcons.chatCircle, size: 18),
                  const SizedBox(width: 8),
                  const Text('Tanya'),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: FilledButton(
              onPressed: () => context.go('/booking/create/${product.id}'),
              child: const Text('Sewa Sekarang'),
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceOption extends StatelessWidget {
  final String label;
  final String price;

  const _PriceOption({required this.label, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7))),
        const SizedBox(height: 4),
        Text(price, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.primary)),
      ],
    );
  }
}

class _VendorInfoCard extends StatelessWidget {
  final Vendor vendor;

  const _VendorInfoCard({required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  child: Icon(PhosphorIcons.storefront, color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vendor.namaToko, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
                      Text('${vendor.kota} • ${vendor.alamat}', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(PhosphorIcons.star, color: Colors.amber),
                    Text('${vendor.ratingRata}', style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text('(${vendor.totalReview})', style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _InfoItem(icon: PhosphorIcons.clock, label: 'Buka', value: vendor.jamOperasional),
                ),
                Expanded(
                  child: _InfoItem(icon: PhosphorIcons.phone, label: 'Kontak', value: vendor.kontak),
                ),
                Expanded(
                  child: _InfoItem(
                    icon: vendor.canAntar ? PhosphorIcons.truck : PhosphorIcons.package,
                    label: 'Ambil',
                    value: vendor.canAntar ? 'Diantar & Ambil' : 'Hanya Ambil',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoItem({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
        Text(value, style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500), textAlign: TextAlign.center),
      ],
    );
  }
}