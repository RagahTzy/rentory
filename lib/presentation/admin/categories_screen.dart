import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kategori Global'), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.category, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Kategori Global', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Kelola kategori barang', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
