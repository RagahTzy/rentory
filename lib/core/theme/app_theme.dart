// lib/core/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF2563EB);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1D4ED8);
  static const Color secondaryColor = Color(0xFF059669);
  static const Color accentColor = Color(0xFFF59E0B);
  static const Color errorColor = Color(0xFFDC2626);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFF8FAFC);
  static const Color cardColor = Color(0xFFFFFFFF);
  static const Color dividerColor = Color(0xFFE2E8F0);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      primaryContainer: Color(0xFFDBEAFE),
      secondary: secondaryColor,
      secondaryContainer: Color(0xFFD1FAE5),
      tertiary: accentColor,
      tertiaryContainer: Color(0xFFFEF3C7),
      error: errorColor,
      surface: surfaceColor,
      background: backgroundColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF0F172A),
      onBackground: Color(0xFF0F172A),
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: backgroundColor,
    cardColor: cardColor,
    dividerColor: dividerColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      foregroundColor: Color(0xFF0F172A),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF0F172A),
      ),
      iconTheme: IconThemeData(color: Color(0xFF0F172A)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: const BorderSide(color: primaryColor, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF8FAFC),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: dividerColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: dividerColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: errorColor),
      ),
      labelStyle: const TextStyle(color: Color(0xFF64748B)),
      hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
    ),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 1,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: surfaceColor,
      selectedItemColor: primaryColor,
      unselectedItemColor: Color(0xFF94A3B8),
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: primaryColor,
      unselectedLabelColor: Color(0xFF94A3B8),
      indicatorColor: primaryColor,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFFDBEAFE),
      selectedColor: primaryColor,
      labelStyle: const TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
      secondaryLabelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: surfaceColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      contentTextStyle: const TextStyle(fontSize: 14, color: Color(0xFF334155)),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color(0xFF1E293B),
      contentTextStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Color(0xFF0F172A)),
      displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFF0F172A)),
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF0F172A)),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF334155)),
      titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF64748B)),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF1E293B)),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF334155)),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF64748B)),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF334155)),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF64748B)),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFF94A3B8)),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF334155),
      size: 24,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: primaryLight,
      primaryContainer: Color(0xFF1E3A5F),
      secondary: Color(0xFF34D399),
      secondaryContainer: Color(0xFF064E3B),
      tertiary: Color(0xFFFBBF24),
      tertiaryContainer: Color(0xFF78350F),
      error: Color(0xFFEF4444),
      surface: Color(0xFF1E293B),
      background: Color(0xFF0F172A),
      onPrimary: Color(0xFF0F172A),
      onSecondary: Color(0xFF0F172A),
      onSurface: Color(0xFFF8FAFC),
      onBackground: Color(0xFFF8FAFC),
      onError: Color(0xFF0F172A),
    ),
    scaffoldBackgroundColor: const Color(0xFF0F172A),
    cardColor: const Color(0xFF1E293B),
    dividerColor: const Color(0xFF334155),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E293B),
      foregroundColor: Color(0xFFF8FAFC),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      iconTheme: IconThemeData(color: Color(0xFFF8FAFC)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryLight,
        foregroundColor: Color(0xFF0F172A),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryLight,
        side: const BorderSide(color: primaryLight, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryLight,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E293B),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF334155)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF334155)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFEF4444)),
      ),
      labelStyle: const TextStyle(color: Color(0xFF94A3B8)),
      hintStyle: const TextStyle(color: Color(0xFF64748B)),
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1E293B),
      elevation: 1,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E293B),
      selectedItemColor: primaryLight,
      unselectedItemColor: Color(0xFF64748B),
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: primaryLight,
      unselectedLabelColor: Color(0xFF64748B),
      indicatorColor: primaryLight,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFF1E3A5F),
      selectedColor: primaryLight,
      labelStyle: const TextStyle(color: primaryLight, fontWeight: FontWeight.w500),
      secondaryLabelStyle: const TextStyle(color: Color(0xFF0F172A), fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: const Color(0xFF1E293B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      contentTextStyle: const TextStyle(fontSize: 14, color: Color(0xFFE2E8F0)),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color(0xFF334155),
      contentTextStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryLight,
      foregroundColor: Color(0xFF0F172A),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Color(0xFFF8FAFC)),
      displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFFF8FAFC)),
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFFF8FAFC)),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFFE2E8F0)),
      titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF94A3B8)),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFFF1F5F9)),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFE2E8F0)),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF94A3B8)),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFFE2E8F0)),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF94A3B8)),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFF64748B)),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFFE2E8F0),
      size: 24,
    ),
  );
}