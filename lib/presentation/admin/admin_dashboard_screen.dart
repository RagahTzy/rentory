import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.buildings, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Admin Dashboard', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Platform overview', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
