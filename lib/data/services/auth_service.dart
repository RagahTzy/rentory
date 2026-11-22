// lib/data/services/auth_service.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/user.dart';

class AuthService {
  static List<User> _users = [];
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    final jsonString = await rootBundle.loadString('lib/data/dummy/users.json');
    final List<dynamic> jsonList = jsonDecode(jsonString);
    _users = jsonList.map((e) => User.fromJson(e)).toList();
    _initialized = true;
  }

  static Future<User?> login(String email, String password) async {
    await init();
    try {
      // Pengusaha yang masih menunggu verifikasi tetap boleh login,
      // lalu router mengarahkannya ke /vendor/pending (sesuai alur di AGENTS.md).
      return _users.firstWhere(
        (u) =>
            u.email == email &&
            u.password == password &&
            (u.status == 'aktif' || (u.role == 'pengusaha' && u.status == 'menunggu_verifikasi')),
      );
    } catch (_) {
      return null;
    }
  }

  static Future<User?> register({
    required String email,
    required String password,
    required String nama,
    required String noHp,
    required String role, // 'penyewa' | 'pengusaha'
  }) async {
    await init();
    
    // Cek email sudah ada
    if (_users.any((u) => u.email == email)) {
      throw Exception('Email sudah terdaftar');
    }

    final newUser = User(
      id: 'usr_${DateTime.now().millisecondsSinceEpoch}',
      email: email,
      password: password,
      nama: nama,
      noHp: noHp,
      role: role,
      isVerified: role == 'penyewa', // penyewa langsung verified
      status: role == 'pengusaha' ? 'menunggu_verifikasi' : 'aktif',
      createdAt: DateTime.now().toIso8601String(),
    );

    _users.add(newUser);
    // Note: In real app, would persist to backend. For mock, just in-memory.
    return newUser;
  }

  static User? getUserById(String id) {
    try {
      return _users.firstWhere((u) => u.id == id);
    } catch (_) {
      return null;
    }
  }

  static User? getUserByEmail(String email) {
    try {
      return _users.firstWhere((u) => u.email == email);
    } catch (_) {
      return null;
    }
  }

  static List<User> getAllUsers() => _users;

  static List<User> getVendorsPendingVerification() => 
      _users.where((u) => u.role == 'pengusaha' && u.status == 'menunggu_verifikasi').toList();

  static List<User> getAllVendors() => 
      _users.where((u) => u.role == 'pengusaha').toList();

  static void updateUserStatus(String userId, String status, {String? alasanTolak}) {
    final index = _users.indexWhere((u) => u.id == userId);
    if (index != -1) {
      _users[index] = _users[index].copyWith(
        status: status,
        isVerified: status == 'aktif',
      );
    }
  }

  static void updateUserVendorId(String userId, String vendorId) {
    final index = _users.indexWhere((u) => u.id == userId);
    if (index != -1) {
      _users[index] = _users[index].copyWith(vendorId: vendorId);
    }
  }
}