import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class ExtensionScreen extends StatelessWidget {
  final String rentalId;
  const ExtensionScreen({super.key, required this.rentalId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perpanjangan $rentalId')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.clock, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Perpanjangan Sewa', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Rental ID: $rentalId', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 24),
            FilledButton(onPressed: () => context.pop(), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
