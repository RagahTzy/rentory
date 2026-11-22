import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VendorMaintenanceScreen extends StatelessWidget {
  const VendorMaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Maintenance')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.wrench, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Maintenance Barang', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Barang dalam perbaikan', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
