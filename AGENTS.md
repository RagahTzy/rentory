# AGENTS.md — Rentory v2 Project Instructions

> **Project**: Rentory v2 — Marketplace Sewa Barang Multi-Vendor  
> **Location**: `D:/Ragah_Mujahidin/kampus/catatan_semester_5/mola/rentory`  
> **Last Updated**: 2025-11-22

---

## 🎯 Project Overview

**Rentory** adalah marketplace multi-vendor untuk sewa barang. Tiga role: **Penyewa** (cari & booking), **Pengusaha/Mitra** (kelola toko & transaksi), **Admin** (verifikasi & moderasi). Backend menggunakan **Dummy JSON** hanya untuk **Products** & **Auth**; sisanya mock lokal (Riverpod state).

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | Flutter 3.13+ (Material 3) |
| State Management | **Riverpod** (flutter_riverpod + riverpod_generator) |
| Routing | **GoRouter** (declarative, auth guards) |
| Models | **Freezed** + **json_serializable** (immutable, union types) |
| Local Storage | **Hive** + **SharedPreferences** |
| Network/Utils | intl, timezone, image_picker, pdf, flutter_map (OSM) |
| Icons | phosphor_flutter |

---

## 📁 Project Structure (Feature-First)

```
lib/
├── main.dart                          # App entry, providers, router
├── core/
│   ├── constants/app_constants.dart   # Role, status, config keys
│   ├── theme/app_theme.dart           # Light/Dark ThemeData
│   ├── routing/app_router.dart        # All routes + redirect guards
│   └── utils/                         # location, format, validation
├── data/
│   ├── dummy/                         # HANYA 3 FILE JSON
│   │   ├── users.json                 # 6 demo users (auth source)
│   │   ├── categories.json            # 6 categories
│   │   └── products.json              # 12 products (vendor_id linked)
│   ├── models/                        # Freezed models (*.freezed.dart, *.g.dart)
│   │   ├── user.dart
│   │   ├── product.dart
│   │   ├── vendor.dart
│   │   ├── booking.dart
│   │   └── others.dart
│   ├── services/                      # HANYA 2 SERVICE PAKAI JSON
│   │   ├── auth_service.dart          # Login/register → users.json
│   │   └── product_service.dart       # CRUD products → products.json
│   └── mock/                          # SEMUA DATA LAIN (in-memory)
│       ├── vendor_mock.dart           # 4 vendors + Haversine helpers
│       ├── booking_mock.dart
│       ├── rental_mock.dart
│       ├── payment_mock.dart
│       ├── review_mock.dart
│       ├── chat_mock.dart
│       ├── notification_mock.dart
│       ├── dispute_mock.dart
│       ├── blacklist_mock.dart
│       └── vendor_document_mock.dart
└── presentation/
    ├── auth/                          # Login, Register, RoleSelect, VendorRegister
    ├── home/                          # HomeScreen (katalog, filter, nearby)
    ├── product/                       # ProductDetail, ProductSearch
    ├── booking/                       # BookingCreate (placeholder)
    ├── rental/                        # (placeholder)
    ├── payment/                       # (placeholder)
    ├── profile/                       # (placeholder)
    ├── vendor/                        # VendorDashboard + sub-screens (placeholder)
    ├── admin/                         # AdminDashboard + sub-screens (placeholder)
    ├── chat/                          # (placeholder)
    ├── notifications/                 # (placeholder)
    └── shared/                        # SplashScreen
```

---

## 🔑 Key Design Decisions (Non-Negotiable)

| # | Decision | Implementation |
|---|----------|----------------|
| 1 | **Pembayaran**: Transfer langsung ke rekening pengusaha | `Vendor.rekening` (bank, nomor, atas nama) wajib di form daftar |
| 2 | **Komisi**: Gratis (0%) | `settings.komisi_persen = 0`, no invoice/payout logic |
| 3 | **Lokasi "Dekat Saya"**: Haversine client-side | `location_utils.dart` → `vendor_mock.dart.getNearbyVendors()` |
| 4 | **Koordinat**: Wajib `latitude`, `longitude` di vendor | Form `VendorRegisterScreen` + `Vendor` model |
| 5 | **Pengambilan**: 2 opsi (`ambil_di_toko` wajib, `diantar` opsional) | `Vendor.opsiPengambilan` list + `biayaAntarPerKm` + `radiusAntarMaxKm` |
| 6 | **Backend**: Dummy JSON **hanya** Products & Auth | `auth_service.dart`, `product_service.dart` saja pakai JSON; sisanya mock |
| 7 | **Isolasi Data Vendor**: Setiap query pengusaha **harus** filter `vendor_id` | Enforced di repository/service layer, bukan UI |

---

## 🧪 Commands

```bash
# Install dependencies
flutter pub get

# Generate Freezed / JSON serializable code
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode during development
flutter pub run build_runner watch --delete-conflicting-outputs

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
3. **Before PR**: `flutter analyze && flutter test && flutter pub run build_runner build`
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

- ❌ Jangan tambah service baru yang baca JSON (hanya Auth & Product)
- ❌ Jangan hardcode `vendor_id` di UI — selalu dari auth state / provider
- ❌ Jangan edit `users.json`, `products.json`, `categories.json` manual saat runtime (read-only)
- ❌ Jangan skip `build_runner` setelah ubah model Freezed
- ❌ Jangan commit file `*.g.dart`, `*.freezed.dart` tanpa generate ulang
- ❌ Jangan pakai `setState` di ConsumerWidget — pakai Riverpod state

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

**users.json** — 6 users:
- `usr_001`: admin@rentory.com / admin123 (admin)
- `usr_002`: budi@toko.com / budi123 (pengusaha, aktif, vnd_001)
- `usr_003`: siti@toko.com / siti123 (pengusaha, aktif, vnd_002)
- `usr_004`: andi@sewa.com / andi123 (penyewa)
- `usr_005`: ratna@toko.com / ratna123 (pengusaha, menunggu_verifikasi, vnd_003)
- `usr_006`: doni@sewa.com / doni123 (penyewa, juga vendor vnd_004)

**products.json** — 12 products across 4 vendors (vnd_001..vnd_004), 6 categories

**vendor_mock.dart** — 4 vendors dengan lengkap: rekening, koordinat, kebijakan, opsi antar

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

- [ ] `build_runner` belum dijalankan (freezed/g.dart missing)
- [ ] `VendorRegisterScreen` belum simpan dokumen upload (mock only)
- [ ] Haversine di `vendor_mock.dart` pakai `dart:math` — OK
- [ ] Belum ada persist local storage untuk mock data (Hive/SharedPreferences)
- [ ] Placeholder screens banyak — perlu implementasi bertahap
- [ ] Test unit untuk utils (haversine, format, validation)

---

## 📞 Contact / Context

- **Owner**: Ragah Mujahidin (NPM 2407051015), D3 MI
- **Language**: Indonesian casual (aku/kamu)
- **Preference**: Verified artifacts, minimal single-file changes, no credentials in output
- **Style**: "Sama persis" — pixel-perfect matching to reference designs