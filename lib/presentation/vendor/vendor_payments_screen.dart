import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

class VendorPaymentsScreen extends StatelessWidget {
  const VendorPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pembayaran')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.creditCard, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Pembayaran', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Verifikasi pembayaran di sini', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
