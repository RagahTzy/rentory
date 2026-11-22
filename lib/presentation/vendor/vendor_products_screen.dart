import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VendorProductsScreen extends StatelessWidget {
  const VendorProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kelola Barang'), actions: [
        IconButton(onPressed: () {}, icon: const Icon(PhosphorIcons.plus())),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.package(), size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Kelola Barang', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Daftar barang toko Anda', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
