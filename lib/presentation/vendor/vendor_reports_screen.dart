import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VendorReportsScreen extends StatelessWidget {
  const VendorReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Laporan & Statistik')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.chartBar, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Laporan & Statistik', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Laporan penjualan toko Anda', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
