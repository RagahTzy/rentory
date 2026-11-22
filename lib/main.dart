import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'core/theme/app_theme.dart';
import 'core/routing/app_router.dart';
import 'core/utils/format_utils.dart';
import 'data/services/auth_service.dart';
import 'data/services/product_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Hive for local storage
  await Hive.initFlutter();
  
  // Initialize date formatting (Indonesian locale)
  await initializeDateFormatting('id_ID', null);
  Intl.defaultLocale = 'id_ID';
  
  // Initialize services
  await AuthService.init();
  await ProductService.init();
  
  runApp(const ProviderScope(child: RentoryApp()));
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
