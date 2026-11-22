import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CircleAvatar(radius: 40, child: Icon(PhosphorIcons.user, size: 40)),
          const SizedBox(height: 16),
          Text('Nama Pengguna', style: Theme.of(context).textTheme.titleLarge),
          Text('email@example.com', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600)),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(PhosphorIcons.pencil),
            title: const Text('Edit Profil'),
            onTap: () => context.go('/profile/edit'),
          ),
          ListTile(
            leading: const Icon(PhosphorIcons.arrowsClockwise),
            title: const Text('Ganti Peran'),
            onTap: () => context.go('/profile/switch-role'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(PhosphorIcons.signOut, color: Theme.of(context).colorScheme.error),
            title: Text('Keluar', style: TextStyle(color: Theme.of(context).colorScheme.error)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
