import 'dart:io';

import 'package:flutter/services.dart';

/// Memuat font Roboto asli (dibundel di SDK Flutter) ke dalam test.
///
/// Font bawaan flutter_test ("FlutterTest") menggambar tiap huruf sebagai kotak
/// selebar font-size, jadi teks ~2x lebih lebar dari aslinya dan memunculkan
/// overflow palsu. Dengan Roboto, ukuran teks di test = ukuran di HP Android.
Future<void> loadRealFonts() async {
  final flutterRoot = Platform.environment['FLUTTER_ROOT'];
  if (flutterRoot == null) return;
  final dir = Directory('$flutterRoot/bin/cache/artifacts/material_fonts');
  if (!dir.existsSync()) return;

  final roboto = FontLoader('Roboto');
  for (final file in dir.listSync().whereType<File>()) {
    final name = file.uri.pathSegments.last;
    if (name.startsWith('roboto-') && name.endsWith('.ttf')) {
      roboto.addFont(Future.value(ByteData.sublistView(file.readAsBytesSync())));
    }
  }
  await roboto.load();
}
