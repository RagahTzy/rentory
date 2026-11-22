import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VendorCustomersScreen extends StatelessWidget {
  const VendorCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Penyewa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.users(), size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Data Penyewa', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Riwayat penyewa toko Anda', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
