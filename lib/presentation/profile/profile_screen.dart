// lib/presentation/profile/profile_screen.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

import '../../core/auth/auth_state.dart';
import '../../core/constants/app_constants.dart';
import '../../data/mock/vendor_mock.dart';
import '../../data/models/api_models.dart';
import '../../data/models/user.dart';
import '../../data/models/vendor.dart';

/// Profil pengguna berdasarkan data GET https://dummyjson.com/auth/me.
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool _loggingOut = false;

  Future<void> _refresh() async {
    try {
      await ref.read(authStateProvider.notifier).refreshProfile();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Gagal memuat profil: $e')));
    }
  }

  Future<void> _confirmLogout() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Keluar'),
        content: const Text('Anda yakin ingin keluar dari akun ini?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Batal')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Keluar')),
        ],
      ),
    );
    if (ok != true || !mounted) return;

    setState(() => _loggingOut = true);
    // Token dihapus dari SharedPreferences; guard router mengarahkan ke login.
    await ref.read(authStateProvider.notifier).logout();
    if (mounted) context.go('/auth/login');
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    final user = authState is Authenticated ? authState.user : null;
    final profile = authState is Authenticated ? authState.profile : null;
    final vendorId = user?.vendorId;
    final vendor = vendorId == null ? null : getVendorById(vendorId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        leading: user == null
            ? null
            : IconButton(
                icon: const Icon(AppIcons.arrowUUpLeft),
                tooltip: 'Kembali',
                onPressed: () => context.canPop() ? context.pop() : context.go(homePathFor(user)),
              ),
      ),
      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: profile == null ? () async {} : _refresh,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                children: [
                  _ProfileHeader(user: user, profile: profile),
                  const SizedBox(height: 24),
                  _InfoCard(user: user, profile: profile),
                  if (vendor != null) ...[
                    const SizedBox(height: 16),
                    _StoreCard(vendor: vendor),
                  ],
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(AppIcons.package),
                    title: const Text('Kelola Produk (API)'),
                    subtitle: const Text('CRUD produk DummyJSON'),
                    trailing: const Icon(AppIcons.caretRight),
                    onTap: () => context.push('/api-products'),
                  ),
                  ListTile(
                    leading: const Icon(AppIcons.pencil),
                    title: const Text('Edit Profil'),
                    trailing: const Icon(AppIcons.caretRight),
                    onTap: () => context.push('/profile/edit'),
                  ),
                  ListTile(
                    leading: const Icon(AppIcons.arrowsClockwise),
                    title: const Text('Ganti Peran'),
                    trailing: const Icon(AppIcons.caretRight),
                    onTap: () => context.push('/profile/switch-role'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: _loggingOut
                        ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))
                        : Icon(AppIcons.signOut, color: Theme.of(context).colorScheme.error),
                    title: Text('Keluar', style: TextStyle(color: Theme.of(context).colorScheme.error)),
                    onTap: _loggingOut ? null : _confirmLogout,
                  ),
                ],
              ),
            ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  final User user;
  final ApiUser? profile;
  const _ProfileHeader({required this.user, this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = profile?.image;
    return Column(
      children: [
        CircleAvatar(
          radius: 44,
          backgroundColor: theme.colorScheme.primaryContainer,
          backgroundImage: image != null ? CachedNetworkImageProvider(image) : null,
          child: image == null ? Icon(AppIcons.user, size: 40, color: theme.colorScheme.onPrimaryContainer) : null,
        ),
        const SizedBox(height: 12),
        Text(user.nama, style: theme.textTheme.titleLarge, textAlign: TextAlign.center),
        if (profile != null)
          Text('@${profile!.username}', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.outline)),
        const SizedBox(height: 8),
        Chip(
          avatar: const Icon(AppIcons.userCheck, size: 16),
          label: Text(_roleLabel(user.role)),
          visualDensity: VisualDensity.compact,
        ),
      ],
    );
  }

  static String _roleLabel(String role) => switch (role) {
        AppConstants.roleAdmin => 'Admin',
        AppConstants.rolePengusaha => 'Pengusaha',
        _ => 'Penyewa',
      };
}

class _InfoCard extends StatelessWidget {
  final User user;
  final ApiUser? profile;
  const _InfoCard({required this.user, this.profile});

  @override
  Widget build(BuildContext context) {
    final p = profile;
    final rows = <(IconData, String, String?)>[
      (AppIcons.envelope, 'Email', user.email),
      (AppIcons.phone, 'No. HP', user.noHp),
      if (p != null) ...[
        (AppIcons.user, 'Jenis Kelamin', p.gender == null ? null : (p.gender == 'female' ? 'Perempuan' : 'Laki-laki')),
        (AppIcons.calendar, 'Tanggal Lahir', p.birthDate == null ? null : '${p.birthDate} (${p.age} tahun)'),
        (AppIcons.buildings, 'Pekerjaan', p.company == null ? null : '${p.company!.title} — ${p.company!.name}'),
        (AppIcons.hash, 'Role API', p.role),
      ],
      (AppIcons.mapPin, 'Alamat', user.alamat),
    ].where((r) => r.$3 != null && r.$3!.isNotEmpty).toList();

    return Card(
      child: Column(
        children: [
          for (final (icon, label, value) in rows)
            ListTile(
              dense: true,
              leading: Icon(icon, size: 20),
              title: Text(label, style: Theme.of(context).textTheme.labelMedium),
              subtitle: Text(value!, style: Theme.of(context).textTheme.bodyMedium),
            ),
        ],
      ),
    );
  }
}

/// Data toko milik pengusaha (dari vendor_mock.dart, ditautkan lewat user.vendorId).
class _StoreCard extends StatelessWidget {
  final Vendor vendor;
  const _StoreCard({required this.vendor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final opsi = [
      if (vendor.canAmbilDiToko) 'Ambil di toko',
      if (vendor.canAntar) 'Diantar (maks ${vendor.radiusAntarMaxKm.toStringAsFixed(0)} km)',
    ].join(', ');
    final rows = <(IconData, String, String)>[
      (AppIcons.mapPin, 'Alamat', '${vendor.alamat}, ${vendor.kota}'),
      (AppIcons.mapPinLine, 'Koordinat', '${vendor.latitude}, ${vendor.longitude}'),
      (AppIcons.clock, 'Jam Operasional', vendor.jamOperasional),
      (AppIcons.bank, 'Rekening', '${vendor.rekening.bank} ${vendor.rekening.nomorRekening} a.n. ${vendor.rekening.atasNama}'),
      (AppIcons.truck, 'Opsi Pengambilan', opsi),
    ];

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const Icon(AppIcons.storefront),
            title: Text(vendor.namaToko, style: theme.textTheme.titleMedium),
            subtitle: Text(vendor.isActive ? 'Toko terverifikasi' : 'Menunggu verifikasi admin'),
            trailing: Icon(
              vendor.isActive ? AppIcons.checkCircle : AppIcons.clock,
              color: vendor.isActive ? Colors.green : Colors.orange,
            ),
          ),
          const Divider(height: 1),
          for (final (icon, label, value) in rows)
            ListTile(
              dense: true,
              leading: Icon(icon, size: 20),
              title: Text(label, style: theme.textTheme.labelMedium),
              subtitle: Text(value, style: theme.textTheme.bodyMedium),
            ),
        ],
      ),
    );
  }
}
