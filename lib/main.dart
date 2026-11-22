import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'core/theme/app_theme.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize Hive for local storage
    await Hive.initFlutter();

    // Initialize date formatting (Indonesian locale)
    await initializeDateFormatting('id_ID', null);
    Intl.defaultLocale = 'id_ID';
    // Data user & produk diambil dari API DummyJSON setelah login (tidak ada data lokal).
  } catch (e, st) {
    // Jangan crash diam-diam (layar kosong): tampilkan penyebabnya.
    FlutterError.reportError(FlutterErrorDetails(exception: e, stack: st, library: 'rentory init'));
    runApp(_StartupErrorApp(error: e));
    return;
  }

  runApp(const ProviderScope(child: RentoryApp()));
}

class _StartupErrorApp extends StatelessWidget {
  final Object error;
  const _StartupErrorApp({required this.error});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 64),
                const SizedBox(height: 16),
                const Text('Gagal memuat data aplikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('$error', textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RentoryApp extends ConsumerWidget {
  const RentoryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    
    return MaterialApp.router(
      title: 'Rentory',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(MediaQuery.of(context).textScaler.scale(1.0).clamp(0.8, 1.2)),
          ),
          child: child!,
        );
      },
    );
  }
}
