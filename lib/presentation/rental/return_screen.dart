import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ReturnScreen extends StatelessWidget {
  final String rentalId;
  const ReturnScreen({super.key, required this.rentalId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pengembalian $rentalId')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.arrowUTurnLeft, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Pengembalian Barang', style: Theme.of(context).textTheme.titleLarge),
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
