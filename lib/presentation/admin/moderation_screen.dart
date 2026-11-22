import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

class ModerationScreen extends StatelessWidget {
  const ModerationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moderasi')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.shield, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Moderasi', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Moderasi barang & review', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
