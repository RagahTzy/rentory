// lib/presentation/vendor/vendor_pending_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';

class VendorPendingScreen extends StatelessWidget {
  const VendorPendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifikasi Toko'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.user),
            tooltip: 'Profil',
            onPressed: () => context.push('/profile'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(AppIcons.clock, size: 64, color: Colors.orange),
              ),
              const SizedBox(height: 24),
              Text(
                'Menunggu Verifikasi',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Pengajuan toko Anda sedang ditinjau oleh tim admin.\nProses verifikasi biasanya memakan waktu 1-2 hari kerja.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    _buildStatusStep('Pengajuan Diterima', true, 'Data toko & dokumen sudah kami terima'),
                    _buildStatusStep('Verifikasi Dokumen', false, 'Admin mengecek KTP, selfie, dll'),
                    _buildStatusStep('Kepala Toko Diverifikasi', false, 'Admin menghubungi nomor WA toko'),
                    _buildStatusStep('Aktif & Siap Jual', false, 'Toko bisa menayangkan barang'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Anda akan mendapat notifikasi setelah verifikasi selesai.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusStep(String title, bool done, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: done ? Colors.green : Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: done ? const Icon(AppIcons.check, size: 16, color: Colors.white) : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(desc, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}