// lib/core/theme/app_icons.dart
//
// Ikon Phosphor (gaya Regular) sebagai `const IconData` biasa.
//
// Kenapa tidak langsung memakai `PhosphorIconsRegular` dari phosphor_flutter?
// Sejak Flutter 3.47, `IconData` adalah `final class`, sedangkan phosphor_flutter
// 2.1.0 (versi terbaru) masih `extends IconData`, sehingga library Dart-nya gagal
// dikompilasi. Font-nya sendiri tetap valid, jadi kita pakai font dari paket
// tersebut (fontPackage: 'phosphor_flutter') dengan codepoint yang sama persis.
//
// Menambah ikon baru: cari namanya di https://phosphoricons.com, lalu salin
// codepoint-nya dari
//   <pub-cache>/phosphor_flutter-2.1.0/lib/src/phosphor_icons_regular.dart
// (baris `static const <nama> = PhosphorFlatIconData(0x...., 'Regular')`).
import 'package:flutter/widgets.dart';

abstract final class AppIcons {
  static const String _fontFamily = 'PhosphorRegular';
  static const String _fontPackage = 'phosphor_flutter';

  static const IconData arrowUUpLeft = IconData(0xe08a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData arrowsClockwise = IconData(0xe094, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData arrowsDownUp = IconData(0xe098, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData bag = IconData(0xe0b0, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData bank = IconData(0xe0b4, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData bell = IconData(0xe0ce, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData building = IconData(0xe100, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData buildings = IconData(0xe102, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData calendar = IconData(0xe108, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData calendarBlank = IconData(0xe10a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData caretRight = IconData(0xe13a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData chartBar = IconData(0xe150, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData chatCircle = IconData(0xe168, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData check = IconData(0xe182, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData checkCircle = IconData(0xe184, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData clock = IconData(0xe19a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData creditCard = IconData(0xe1d2, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData currencyCircleDollar = IconData(0xe54c, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData envelope = IconData(0xe214, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData eye = IconData(0xe220, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData eyeSlash = IconData(0xe224, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData funnel = IconData(0xe266, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData gear = IconData(0xe270, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData gridFour = IconData(0xe296, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData handshake = IconData(0xe582, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData hash = IconData(0xe2a2, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData heart = IconData(0xe2a8, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData house = IconData(0xe2c2, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData image = IconData(0xe2ca, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData info = IconData(0xe2ce, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData lock = IconData(0xe2fa, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData lockKeyOpen = IconData(0xe300, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData magnifyingGlass = IconData(0xe30c, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData mapPin = IconData(0xe316, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData mapPinLine = IconData(0xe318, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData minus = IconData(0xe32a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData note = IconData(0xe348, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData package = IconData(0xe390, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData pencil = IconData(0xe3ae, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData percent = IconData(0xe3b6, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData phone = IconData(0xe3b8, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData plus = IconData(0xe3d4, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData receipt = IconData(0xe3ec, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData share = IconData(0xe406, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData shield = IconData(0xe40a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData signOut = IconData(0xe42a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData star = IconData(0xe46a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData storefront = IconData(0xe470, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData tag = IconData(0xe478, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData textT = IconData(0xe48a, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData truck = IconData(0xe4b4, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData upload = IconData(0xe4be, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData user = IconData(0xe4c2, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData userCheck = IconData(0xeafa, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData users = IconData(0xe4d6, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData warning = IconData(0xe4e0, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData warningCircle = IconData(0xe4e2, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData wrench = IconData(0xe5d4, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
  static const IconData x = IconData(0xe4f6, fontFamily: _fontFamily, fontPackage: _fontPackage, matchTextDirection: true);
}
