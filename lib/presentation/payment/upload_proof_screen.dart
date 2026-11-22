import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class UploadProofScreen extends StatelessWidget {
  final String rentalId;
  final String paymentId;
  const UploadProofScreen({super.key, required this.rentalId, required this.paymentId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload Bukti $paymentId')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.upload, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Upload Bukti Pembayaran', style: Theme.of(context).textTheme.titleLarge),
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
