import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class HandoverScreen extends StatelessWidget {
  final String rentalId;
  const HandoverScreen({super.key, required this.rentalId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Serah Terima $rentalId')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.handshake, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Serah Terima Barang', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Rental ID: $rentalId', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 24),
            FilledButton(onPressed: () => context.pop(), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
