import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class ReceiptScreen extends StatelessWidget {
  final String rentalId;
  final String paymentId;
  const ReceiptScreen({super.key, required this.rentalId, required this.paymentId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Struk $paymentId')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.receipt, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Struk Pembayaran', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Rental: $rentalId\nPayment: $paymentId', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            FilledButton(onPressed: () => context.pop(), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
