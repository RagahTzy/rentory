import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

class VendorReviewsScreen extends StatelessWidget {
  const VendorReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Review & Rating')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.star, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Review & Rating', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Review dari penyewa', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
