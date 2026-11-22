# Rentory v2 🏪

> **Marketplace Sewa Barang Multi-Vendor** — Flutter + Riverpod + Freezed + GoRouter

[![Flutter](https://img.shields.io/badge/Flutter-3.13+-02569B?logo=flutter&logoColor=white)]()
[![Riverpod](https://img.shields.io/badge/Riverpod-2.4+-00B4AB?logo=riverpod&logoColor=white)]()
[![Freezed](https://img.shields.io/badge/Freezed-2.4+-42A5F5?logo=dart&logoColor=white)]()
[![GoRouter](https://img.shields.io/badge/GoRouter-12.1+-42A5F5?logo=flutter&logoColor=white)]()
[![License](https://img.shields.io/badge/License-MIT-green)]()

---

## ✨ Fitur Utama

| Role | Fitur |
|------|-------|
| **👤 Penyewa** | Katalog global, pencarian & filter (kategori, harga, lokasi, **radius "dekat saya"**), detail barang + kalender ketersediaan, booking & pembayaran DP, serah terima & pengembalian, review & rating, chat dengan pengusaha, wishlist |
| **🏪 Pengusaha (Mitra)** | Registrasi toko + verifikasi admin, CRUD barang (foto, harga jam/hari/minggu, stok), kelola booking masuk (konfirmasi/tolak + cek bentrok jadwal), serah terima & pengembalian (catat kondisi + foto + hitung denda/deposit), laporan penjualan (PDF/Excel), maintenance barang, blacklist penyewa |
| **🛡️ Admin** | Verifikasi pengusaha (cek dokumen), moderasi barang & review, tangani sengketa, kelola kategori global, dashboard platform |

---

## 🎯 Keputusan Desain Kunci

| Item | Keputusan | Alasan |
|------|-----------|--------|
| **Pembayaran** | Transfer langsung ke rekening pengusaha | Simpel, no payment gateway fee, cocok tugas/skripsi |
| **Komisi Platform** | **Gratis (0%)** | Tidak perlu invoice, payout, komisi logic |
| **Lokasi "Dekat Saya"** | Haversine formula (client-side) | Zero cost, no API key, data mock < 100 toko |
| **Koordinat Toko** | Wajib `latitude` + `longitude` | Butuh untuk Haversine & peta future |
| **Pengambilan Barang** | 2 opsi: `ambil_di_toko` / `diantar` | Fleksibel, realistis |
| **Biaya Antar** | Per KM + radius max (per toko) | Realistis, simple calculation |
| **Backend** | **Dummy JSON hanya Products & Auth** | Requirement project; sisanya mock lokal (Riverpod state) |

---

## 🏗 Arsitektur

```
lib/
├── main.dart                      # App entry, providers, router
├── core/
│   ├── constants/                 # AppConstants (role, status, keys)
│   ├── theme/app_theme.dart       # Light/Dark Material 3 theme
│   ├── routing/app_router.dart    # GoRouter + auth guards
│   └── utils/                     # location, format, validation
├── data/
│   ├── models/                    # Freezed models (*.freezed.dart, *.g.dart)
│   ├── services/                  # HANYA 2 SERVICE pakai JSON
│   │   ├── api_client.dart        # HTTP DummyJSON + Bearer token
│   │   ├── token_storage.dart     # Token di SharedPreferences
│   │   ├── auth_service.dart      # Login API DummyJSON (email → /auth/login → /auth/me)
│   │   └── product_service.dart   # Katalog & CRUD dari API /auth/products
│   └── mock/                      # SEMUA DATA LAIN (in-memory)
│       └── vendor_mock.dart       # 4 toko (DummyJSON tidak punya data toko) + Haversine
└── presentation/                  # Feature-first screens
    ├── auth/                      # Login, ForgotPassword
    ├── home/                      # HomeScreen (katalog, filter, nearby)
    ├── product/                   # ProductDetail, ProductSearch
    ├── booking/                   # BookingCreate (placeholder)
    ├── rental/                    # (placeholder)
    ├── payment/                   # (placeholder)
    ├── profile/                   # (placeholder)
    ├── vendor/                    # VendorDashboard + sub-screens
    ├── admin/                     # AdminDashboard + sub-screens
    ├── chat/                      # (placeholder)
    ├── notifications/             # (placeholder)
    └── shared/                    # SplashScreen
```

---

## 🚀 Quick Start

### Prerequisites
- Flutter SDK 3.13+
- Dart 3.1+
- Android Studio / VS Code
- Git

### Install & Run

```bash
# Clone / masuk folder
cd rentory

# Install dependencies
flutter pub get

# Generate Freezed & JSON serializable code
dart run build_runner build

# Run app (debug)
flutter run

# Atau watch mode saat development
dart run build_runner watch
```

---

## 🔐 Akun Demo

| Role | Email | Password |
|------|-------|----------|
| **Admin** | admin@rentory.com | admin123 |
| **Pengusaha (Budi - Kamera)** | budi@toko.com | budi123 |
| **Pengusaha (Siti - Outdoor)** | siti@toko.com | siti123 |
| **Penyewa (Andi)** | andi@sewa.com | andi123 |
| **Pengusaha (Ratna - Menunggu Verifikasi)** | ratna@toko.com | ratna123 |
| **Penyewa + Vendor (Doni - Kendaraan)** | doni@sewa.com | doni123 |

> **Note**: Akun `ratna@toko.com` status `menunggu_verifikasi` → login akan redirect ke `/vendor/pending`

---

## 📱 Screenshots (Placeholder)

| Splash | Login | Home | Product Detail |
|--------|-------|------|----------------|
| ![Splash](assets/images/splash.png) | ![Login](assets/images/login.png) | ![Home](assets/images/home.png) | ![Detail](assets/images/detail.png) |

> *Tambahkan screenshot ke `assets/images/` setelah build (folder dibuat saat dibutuhkan)*

---

## 🧪 Testing

```bash
# Unit tests
flutter test

# Integration tests (jika ada)
flutter test integration_test/

# Coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

---

## 📦 Build Release

```bash
# Android APK
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk

# Android App Bundle (Play Store)
flutter build appbundle --release
# Output: build/app/outputs/bundle/release/app-release.aab

# iOS (macOS only)
flutter build ios --release

# Web
flutter build web --release
# Output: build/web/
```

---

## 📚 Documentation

- **[DESIGN.md](DESIGN.md)** — Full design document (fitur, role, alur, DB schema, tahapan implementasi)
- **[AGENTS.md](AGENTS.md)** — Project instructions untuk AI agents / contributors
- **[LOGS.md](LOGS.md)** — Development logs dengan timestamp real

---

## 🛣 Roadmap (Phases)

| Phase | Status | Focus |
|-------|--------|-------|
| **0** | ✅ Done | Setup Flutter, dependencies, theme, routing, dummy JSON, models, services |
| **1** | ✅ Done | Auth (login, register, role select, vendor register), splash |
| **2** | ✅ Done | Home (katalog, search, filter, nearby), Product Detail, Product Search |
| **3** | 🔄 **Current** | Booking flow (create, my bookings, vendor bookings, konfirmasi/tolak) |
| **4** | ⏳ | Transaksi sewa (serah terima, pengembalian, denda, deposit, perpanjangan, walk-in) |
| **5** | ⏳ | Pembayaran (DP, pelunasan, upload bukti, verifikasi, struk PDF) |
| **6** | ⏳ | Review & rating, Chat, Notifikasi, Wishlist |
| **7** | ⏳ | Vendor Dashboard (laporan, maintenance), Admin Panel (verifikasi, moderasi, sengketa, kategori) |

---

## 🤝 Contributing

1. Fork repo
2. Buat branch: `git checkout -b feature/nama-fitur`
3. Commit: `git commit -m "feat(scope): pesan singkat"`
4. Push: `git push origin feature/nama-fitur`
5. Buat Pull Request

**Convention**: `feat|fix|docs|refactor|test|chore(scope): pesan`

---

## 📄 License

MIT License — bebas dipakai, dimodifikasi, didistribusikan.

---

## 👨‍💻 Author

**Ragah Mujahidin** (NPM 2407051015)
D3 Manajemen Informatika
Project: Rentory v2 — Marketplace Sewa Barang

---

> Dibangun dengan ❤️ menggunakan Flutter, Riverpod, Freezed, GoRouter
> *Dummy JSON backend untuk Products & Auth only — sisanya mock lokal*
