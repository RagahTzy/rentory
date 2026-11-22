import 'package:flutter/material.dart';
import 'package:rentory/core/theme/app_icons.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking Saya')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.calendarBlank, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Belum ada booking', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Booking pertama Anda akan muncul di sini', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
