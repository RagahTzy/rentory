import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class StoreProfileScreen extends StatelessWidget {
  const StoreProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Toko')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.storefront(), size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Profil Toko', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 24),
            FilledButton(onPressed: () => context.pop(), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
