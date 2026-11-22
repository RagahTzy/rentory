import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class ChatRoomScreen extends StatelessWidget {
  final String chatKey;
  const ChatRoomScreen({super.key, required this.chatKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat $chatKey')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.chatCircle, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text('Chat Room', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Key: $chatKey', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 24),
            FilledButton(onPressed: () => context.pop(), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}
