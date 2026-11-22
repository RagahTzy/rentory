import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DisputesScreen extends StatelessWidget {
  const DisputesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sengketa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.warning, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Sengketa', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Penanganan sengketa', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
