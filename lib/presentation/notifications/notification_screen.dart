import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifikasi')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.bell, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Belum ada notifikasi', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Notifikasi akan muncul di sini', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
