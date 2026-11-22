# AGENTS.md — Rentory v2 Project Instructions

> **Project**: Rentory v2 — Marketplace Sewa Barang Multi-Vendor
> **Location**: `D:/Ragah_Mujahidin/kampus/catatan_semester_5/mola/rentory`
> **Last Updated**: 2025-11-22

---

## 🎯 Project Overview

**Rentory** adalah marketplace multi-vendor untuk sewa barang. Tiga role: **Penyewa** (cari & booking), **Pengusaha/Mitra** (kelola toko & transaksi), **Admin** (verifikasi & moderasi). **Auth & Products 100% dari API DummyJSON** (https://dummyjson.com) — tidak ada file JSON lokal. Data yang tidak ada di DummyJSON (toko, tarif sewa) adalah tambahan di `rental_catalog.dart` & `vendor_mock.dart`.

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | Flutter 3.13+ (Material 3) |
| State Management | **Riverpod 3** (flutter_riverpod + riverpod_generator) |
| Routing | **GoRouter** (declarative, auth guards) |
| Models | **Freezed** + **json_serializable** (immutable, union types) |
| Local Storage | **Hive** + **SharedPreferences** |
| Network/Utils | intl, timezone, image_picker, pdf, flutter_map (OSM) |
| Icons | Phosphor via `AppIcons` (`lib/core/theme/app_icons.dart`, font dari phosphor_flutter) |

---

## 📁 Project Structure (Feature-First)

```
lib/
├── main.dart                          # App entry, providers, router
├── core/
│   ├── constants/app_constants.dart   # Role, status, config keys
│   ├── constants/api_constants.dart   # Endpoint DummyJSON
│   ├── constants/rental_catalog.dart  # Tambahan sewa: kategori→toko, tarif Rp/hari, aturan
│   ├── theme/app_theme.dart           # Light/Dark ThemeData
│   ├── routing/app_router.dart        # All routes + redirect guards
│   └── utils/                         # location, format, validation
├── data/
│   ├── models/                        # Freezed models (*.freezed.dart, *.g.dart)
│   │   ├── api_models.dart            # Response DummyJSON (LoginResponse, ApiUser, ApiProduct, ApiCategory)
│   │   ├── user.dart                  # User aplikasi (dibentuk dari /auth/me)
│   │   ├── product.dart               # Produk sewa (dibentuk dari /auth/products + RentalCatalog)
│   │   └── vendor.dart
│   ├── services/                      # SEMUA data user & produk dari API DummyJSON
│   │   ├── api_client.dart            # HTTP wrapper + Bearer token + auto refresh
│   │   ├── token_storage.dart         # Token di SharedPreferences
│   │   ├── auth_service.dart          # /users/filter, /auth/login, /auth/me
│   │   └── product_service.dart       # Katalog sewa + CRUD /auth/products, catalogProvider
│   └── mock/
│       └── vendor_mock.dart           # 4 toko (tambahan: DummyJSON tidak punya data toko)
└── presentation/
    ├── auth/                          # Login, ForgotPassword (registrasi dihapus: akun dari DummyJSON)
    ├── home/                          # HomeScreen (katalog, filter, nearby)
    ├── product/                       # ProductDetail, ProductSearch, ApiProducts (CRUD)
    ├── booking/                       # BookingCreate (placeholder)
    ├── rental/                        # (placeholder)
    ├── payment/                       # (placeholder)
    ├── profile/                       # Profile (data /auth/me + toko), logout
    ├── vendor/                        # VendorDashboard + sub-screens (placeholder)
    ├── admin/                         # AdminDashboard + sub-screens (placeholder)
    ├── chat/                          # (placeholder)
    ├── notifications/                 # (placeholder)
    └── shared/                        # SplashScreen (restore sesi), ProductImage
```

---

## 🔑 Key Design Decisions (Non-Negotiable)

| # | Decision | Implementation |
|---|----------|----------------|
| 1 | **Pembayaran**: Transfer langsung ke rekening pengusaha | `Vendor.rekening` (bank, nomor, atas nama) wajib di form daftar |
| 2 | **Komisi**: Gratis (0%) | `settings.komisi_persen = 0`, no invoice/payout logic |
| 3 | **Lokasi "Dekat Saya"**: Haversine client-side | `location_utils.dart` → `vendor_mock.dart.getNearbyVendors()` |
| 4 | **Koordinat**: Wajib `latitude`, `longitude` di vendor | `vendor_mock.dart` + `Vendor` model |
| 5 | **Pengambilan**: 2 opsi (`ambil_di_toko` wajib, `diantar` opsional) | `Vendor.opsiPengambilan` list + `biayaAntarPerKm` + `radiusAntarMaxKm` |
| 6 | **Backend**: API DummyJSON untuk Products & Auth (tanpa file JSON lokal) | `auth_service.dart`, `product_service.dart` → `api_client.dart`; toko di `vendor_mock.dart` |
| 7 | **Isolasi Data Vendor**: Setiap query pengusaha **harus** filter `vendor_id` | Enforced di repository/service layer, bukan UI |

---

## 🧪 Commands

```bash
# Install dependencies
flutter pub get

# Generate Freezed / JSON serializable code
dart run build_runner build

# Watch mode during development
dart run build_runner watch

# Run app
flutter run

# Run tests
flutter test

# Analyze
flutter analyze

# Build APK
flutter build apk --release
```

---

## 🔄 Development Workflow

1. **Branch per feature**: `feature/booking-flow`, `feature/vendor-dashboard`, etc.
2. **Commit convention**: `type(scope): message` — e.g., `feat(booking): add date picker validation`
3. **Before PR**: `dart run build_runner build && flutter analyze && flutter test`
4. **No direct push to main** — PR required (manual review)
5. **Mock data changes**: Update `lib/data/mock/*.dart` + corresponding model if needed

---

## 📝 Coding Conventions

- **Riverpod**: Gunakan `@riverpod` annotation + `ref.watch(provider)` di UI
- **Freezed**: Semua model pakai `@freezed`, `copyWith`, `fromJson`/`toJson`
- **Routing**: Semua route di `app_router.dart`; guard di `redirect`
- **Theme**: Pakai `Theme.of(context).colorScheme.*`, jangan hardcode warna
- **Validation**: Pakai `validation_utils.dart` di semua form
- **Format**: `formatCurrency()`, `formatDate()`, `haversineKm()` dari utils
- **Async**: Selalu `try/catch` + loading state + error handling
- **Null Safety**: Non-nullable by default; `?` hanya jika benar-benar optional

---

## 🚫 Don't Do

- ❌ Jangan tambah file JSON lokal untuk user/produk — ambil dari API DummyJSON (data tambahan khusus sewa → `rental_catalog.dart`)
- ❌ Jangan hardcode `vendor_id` di UI — selalu dari auth state / provider
- ❌ Jangan skip `build_runner` setelah ubah model Freezed
- ❌ Jangan commit file `*.g.dart`, `*.freezed.dart` tanpa generate ulang
- ❌ Jangan pakai `setState` di ConsumerWidget — pakai Riverpod state
- ❌ Jangan `import 'package:phosphor_flutter/phosphor_flutter.dart'` — library Dart-nya tidak bisa dikompilasi di Flutter 3.47 (`IconData` sekarang `final class`). Pakai `AppIcons.<nama>`; ikon baru ditambahkan di `lib/core/theme/app_icons.dart`
- ❌ Jangan tulis class Freezed tanpa `abstract`/`sealed` (wajib sejak Freezed 3): `abstract class X with _$X`
- ❌ Jangan tulis aturan "role → halaman" di layar; pakai `homePathFor(user)` dari `core/auth/auth_state.dart`

---

## 🔐 Auth & Role Flow

```
Splash → /auth/login → (success) → role check:
  - penyewa     → /home
  - pengusaha   → /vendor/dashboard (jika verified) atau /vendor/pending
  - admin       → /admin/dashboard
```

Guard di `app_router.dart` redirect:
- Belum login + bukan auth route → `/auth/login`
- Sudah login + akses auth route → redirect ke home/dashboard
- Vendor route + bukan pengusaha/verified → `/home` atau `/vendor/pending`
- Admin route + bukan admin → `/home`

---

## 📦 Dummy Data Reference

**Akun (API DummyJSON, login pakai email)** — role: `admin` DummyJSON → admin; pemilik toko di `vendor_mock.dart` → pengusaha; lainnya → penyewa:
- `emily.johnson@x.dummyjson.com` / `emilyspass` (admin, id 1)
- `olivia.wilson@x.dummyjson.com` / `oliviawpass` (pengusaha, vnd_001 aktif, id 6)
- `alexander.jones@x.dummyjson.com` / `alexanderjpass` (pengusaha, vnd_002 aktif, id 7)
- `ava.taylor@x.dummyjson.com` / `avatpass` (pengusaha, vnd_003 menunggu verifikasi, id 8)
- `ethan.martinez@x.dummyjson.com` / `ethanmpass` (pengusaha, vnd_004 aktif, id 9)
- `avery.perez@x.dummyjson.com` / `averyppass` (penyewa, id 16)

**Produk (API DummyJSON `/auth/products`)** — hanya kategori di `RentalCatalog.categories` (smartphones, tablets, mobile-accessories → vnd_001; sports-accessories, sunglasses → vnd_002; laptops → vnd_003; vehicle, motorcycle → vnd_004). Tarif = 1% harga USD × Rp16.000 per hari (min Rp10.000), mingguan = 6× harian.

**vendor_mock.dart** — 4 toko lengkap: rekening, koordinat, kebijakan, opsi antar (`userId` = id user DummyJSON)

---

## 📅 Implementation Phases (from DESIGN.md)

| Phase | Focus | Target |
|-------|-------|--------|
| **0** | Setup & Foundation | Done ✅ |
| **1** | Auth & Role | Done ✅ |
| **2** | Katalog & Produk | Done ✅ |
| **3** | Booking | 🔄 Next |
| **4** | Transaksi Sewa | ⏳ |
| **5** | Pembayaran | ⏳ |
| **6** | Interaksi (Review, Chat, Notif) | ⏳ |
| **7** | Dashboard & Pelengkap | ⏳ |

---

## 📌 Current Sprint Focus: **Phase 3 — Booking**

Priority screens to build:
1. `BookingCreateScreen` — Sudah ada placeholder, perlu lengkapi validasi bentrok jadwal
2. `MyBookingsScreen` — List booking user + status
3. `BookingDetailScreen` — Detail + aksi (batalkan, bayar DP)
4. `VendorBookingsScreen` — List booking masuk + konfirmasi/tolak
5. Repository layer: `BookingRepository` wrap `booking_mock.dart`

---

## 🐛 Known Issues / TODO

- [x] `build_runner` sudah jalan (Freezed 4 + json_serializable, `build.yaml` → `field_rename: snake`)
- [ ] Haversine di `vendor_mock.dart` pakai `dart:math` — OK
- [ ] Placeholder screens banyak — perlu implementasi bertahap
- [ ] Mock booking/rental/chat/dll sudah dihapus (tidak terpakai) — Phase 3+ perlu membuat datanya lagi (lihat git history)
- [ ] DummyJSON tidak menyimpan hasil POST/PUT/DELETE (simulasi) → data kembali seperti semula setelah refresh

---

## 📞 Contact / Context

- **Owner**: Ragah Mujahidin (NPM 2407051015), D3 MI
- **Language**: Indonesian casual (aku/kamu)
- **Preference**: Verified artifacts, minimal single-file changes, no credentials in output
- **Style**: "Sama persis" — pixel-perfect matching to reference designs