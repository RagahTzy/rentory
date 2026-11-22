import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIcons.chatCircle, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Belum ada chat', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Mulai obrolan dengan pengusaha', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }
}
