import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

class VendorVerificationScreen extends StatelessWidget {
  const VendorVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verifikasi Pengusaha')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.userCheck, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Verifikasi Pengusaha', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Antrian verifikasi toko baru', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
