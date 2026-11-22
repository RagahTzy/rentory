import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MyRentalsScreen extends StatelessWidget {
  const MyRentalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sewa Saya')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.bag, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Belum ada sewa aktif', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Sewa Anda akan muncul di sini', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
