// lib/presentation/shared/product_image.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

import '../../data/models/product.dart';

/// Foto produk dari CDN DummyJSON (di-cache), dengan placeholder bila kosong/gagal.
class ProductImage extends StatelessWidget {
  final String? url;
  final double iconSize;
  const ProductImage({super.key, required this.url, this.iconSize = 32});

  /// Foto pertama produk (untuk kartu / thumbnail).
  ProductImage.of(Product product, {super.key, this.iconSize = 32})
      : url = product.foto.isEmpty ? null : product.foto.first;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final placeholder = ColoredBox(
      color: scheme.surfaceContainerHighest,
      child: Center(child: Icon(AppIcons.package, size: iconSize, color: scheme.primary)),
    );
    final src = url;
    if (src == null || src.isEmpty) return placeholder;
    return CachedNetworkImage(
      imageUrl: src,
      fit: BoxFit.cover,
      width: double.infinity,
      placeholder: (_, _) => placeholder,
      errorWidget: (_, _, _) => ColoredBox(
        color: scheme.surfaceContainerHighest,
        child: Center(child: Icon(AppIcons.image, size: iconSize, color: scheme.outline)),
      ),
    );
  }
}

/// Tampilan standar saat katalog API gagal dimuat.
class ApiErrorView extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;
  const ApiErrorView({super.key, required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AppIcons.warningCircle, size: 48, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 12),
            Text('$error', textAlign: TextAlign.center),
            const SizedBox(height: 12),
            FilledButton.tonal(onPressed: onRetry, child: const Text('Coba Lagi')),
          ],
        ),
      ),
    );
  }
}
