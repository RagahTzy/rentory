// lib/presentation/auth/role_select_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RoleSelectScreen extends StatelessWidget {
  const RoleSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pilih Peran')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Icon(
                PhosphorIcons.package,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'Anda ingin bergabung sebagai?',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Pilih peran yang sesuai dengan kebutuhan Anda',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              // Penyewa Card
              _RoleCard(
                icon: PhosphorIcons.user,
                title: 'Penyewa',
                subtitle: 'Cari & sewa barang dari berbagai toko',
                features: ['Telusuri katalog lengkap', 'Booking & bayar online', 'Review & rating', 'Chat dengan pengusaha'],
                color: Colors.blue,
                onTap: () => context.go('/auth/register'),
              ),
              const SizedBox(height: 16),

              // Pengusaha Card
              _RoleCard(
                icon: PhosphorIcons.storefront,
                title: 'Pengusaha Sewa',
                subtitle: 'Buka toko & kelola sewa barang Anda',
                features: ['Kelola barang & stok', 'Terima booking', 'Serah terima & pengembalian', 'Laporan penjualan'],
                color: Colors.green,
                onTap: () => context.go('/auth/vendor-register'),
              ),
              const SizedBox(height: 16),

              // Dual Role Info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(PhosphorIcons.info, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Satu akun bisa punya dua peran! Daftar sebagai salah satu, nanti bisa tambah peran lain di pengaturan.',
                        style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final List<String> features;
  final Color color;
  final VoidCallback onTap;

  const _RoleCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.features,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(icon, size: 28, color: color),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
                        const SizedBox(height: 4),
                        Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                        )),
                      ],
                    ),
                  ),
                  Icon(PhosphorIcons.caretRight, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
                ],
              ),
              const SizedBox(height: 16),
              ...features.map((f) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    Icon(PhosphorIcons.checkCircle, size: 16, color: color),
                    const SizedBox(width: 8),
                    Text(f, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}