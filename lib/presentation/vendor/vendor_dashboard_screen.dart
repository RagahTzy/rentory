import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class VendorDashboardScreen extends StatelessWidget {
  const VendorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Toko'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.user),
            tooltip: 'Profil',
            onPressed: () => context.push('/profile'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.storefront, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Dashboard Toko', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Ringkasan toko Anda', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
