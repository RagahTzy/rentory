# LOGS.md — Rentory v2 Development Logs

> **Format**: `YYYY-MM-DD` | `Phase/Task` | `Description` | `Status`

---

## 2025-11-22

| Phase | Task | Description | Status |
|-------|------|-------------|--------|
| 0 | Project Init | Flutter project created dengan `flutter create` | ✅ Done |
| 0 | Dependencies | pubspec.yaml configured: Riverpod, GoRouter, Freezed, Hive, intl, pdf, flutter_map, phosphor_flutter | ✅ Done |
| 0 | Folder Structure | Feature-first structure dibuat (core, data, presentation) | ✅ Done |
| 0 | Dummy JSON | `users.json` (6 users), `categories.json` (6 cats), `products.json` (12 products) | ✅ Done |
| 0 | Models | Freezed models: User, Product, Category, Vendor, BankAccount, Booking, Rental, RentalItem, Payment, Extension, Maintenance, Review, VendorBlacklist, Message, Dispute, Notification, VendorDocument | ✅ Done |
| 0 | Services | `AuthService` (login/register dari users.json), `ProductService` (CRUD dari products.json) | ✅ Done |
| 0 | Mock Data | `vendor_mock.dart` (4 vendors + Haversine), `booking_mock.dart`, `rental_mock.dart`, `payment_mock.dart`, `review_mock.dart`, `chat_mock.dart`, `notification_mock.dart`, `dispute_mock.dart`, `blacklist_mock.dart`, `vendor_document_mock.dart` | ✅ Done |
| 0 | Core Utils | `location_utils.dart` (Haversine), `format_utils.dart` (currency, date, relative time), `validation_utils.dart` (email, phone, price, coordinate) | ✅ Done |
| 0 | Theme | `app_theme.dart` — Light/Dark Material 3 dengan Phosphor icons | ✅ Done |
| 0 | Routing | `app_router.dart` — GoRouter dengan auth guards (redirect by role) | ✅ Done |
| 0 | Main Entry | `main.dart` — ProviderScope, Hive init, locale init, services init | ✅ Done |
| 1 | Auth Screens | `LoginScreen` (demo accounts), `RegisterScreen` (penyewa), `RoleSelectScreen`, `VendorRegisterScreen` (full form + rekening + koordinat), `ForgotPasswordScreen`, `VendorPendingScreen` | ✅ Done |
| 2 | Home & Product | `HomeScreen` (katalog, category chips, nearby vendors horizontal, product grid), `ProductSearchScreen` (search, filter kategori/harga/radius/sort), `ProductDetailScreen` (image gallery, price options, vendor info, bottom bar chat/sewa) | ✅ Done |
| 3 | Booking (Placeholder) | `BookingCreateScreen` — date picker, qty, pickup option, price breakdown | 🔄 Placeholder |
| - | Docs | `DESIGN.md` (full spec), `AGENTS.md` (project instructions), `README.md` (project overview) | ✅ Done |
| 0 | Build Runner | `flutter pub run build_runner build --delete-conflicting-outputs` — Freezed/JSON serializable generated | ✅ Done |
| 0 | Meta Dep | Added `meta: ^1.10.0` to pubspec for `@immutable` annotation | ✅ Done |

---

## Next Up (Phase 3 — Booking Flow)

| Priority | Task | Notes |
|----------|------|-------|
| 1 | `BookingRepository` wrap `booking_mock.dart` | Add conflict check logic |
| 2 | `MyBookingsScreen` | List user bookings dengan status badge |
| 3 | `BookingDetailScreen` | Detail + aksi (batalkan, bayar DP, chat) |
| 4 | `VendorBookingsScreen` | List booking masuk + konfirmasi/tolak dengan alasan |
| 5 | Integrasi `BookingCreateScreen` → repository | Validasi bentrok jadwal real |
| 6 | Notifikasi booking (create, confirm, reject) | Via `notification_mock.dart` |

---

## Known Issues / Technical Debt

| Date | Issue | Severity | Plan |
|------|-------|----------|------|
| 2025-11-22 | Mock data tidak persist (Hive/SharedPreferences) | Medium | Add `LocalStorageService` + persist mock boxes |
| 2025-11-22 | Placeholder screens banyak (rental, payment, profile, vendor, admin, chat, notif) | Medium | Implementasi bertahap per phase |
| 2025-11-22 | Unit tests belum ada untuk utils | Low | Add test file untuk haversine, format, validation |
| 2025-11-22 | `VendorRegisterScreen` upload dokumen mock only | Low | Integrasi `image_picker` + mock document storage |
| 2025-11-22 | `flutter analyze` warnings (deprecated APIs, unused imports) | Low | Cleanup gradual per file |

---

## Commands Log

```bash
# 2025-11-22 13:30 — Project setup
cd /d/Ragah_Mujahidin/kampus/catatan_semester_5/mola/rentory
flutter create --org com.rentory --platforms=android,ios,web .
flutter pub get

# 2025-11-22 14:00 — Dependencies & structure
flutter pub get
mkdir -p lib/core/{constants,utils,errors,theme,routing} lib/data/{dummy,models,services,mock,repositories} lib/presentation/{auth,home,product,booking,rental,payment,profile,vendor,admin,chat,notifications,shared} assets/{logos,products,images}

# 2025-11-22 15:00 — Generate code
flutter pub run build_runner build --delete-conflicting-outputs
flutter run

# 2025-11-22 16:30 — Fix build errors
# - Fix AuthNotifier constructor (const → super)
# - Move AuthState to separate file (lib/core/auth/auth_state.dart)
# - Fix vendor screen imports (create missing files)
# - Fix payment_mock.dart import (mockRentals)
# - Fix rental_mock.dart import (Maintenance model)
# - Add meta dependency
# - Clean build_runner cache & rebuild

# 2025-11-22 17:00 — Final verify
flutter analyze  # Only warnings, no errors
flutter pub run build_runner build --delete-conflicting-outputs  # Success
```

---

## 2026-11-23 — CRUD API, Authentication DummyJSON & SharedPreferences

| Phase | Task | Description | Status |
|-------|------|-------------|--------|
| 4 | HTTP client | + `http`; `ApiClient` (GET/POST/PUT/DELETE, decode JSON, `ApiException`, Bearer token otomatis dari SharedPreferences, auto-refresh saat 401). + izin `INTERNET` di AndroidManifest | ✅ Done |
| 4 | Auth DummyJSON | Login pakai username/password → `POST /auth/login`; profil via `GET /auth/me` (Bearer). Role API dipetakan: admin→admin, moderator→pengusaha, user→penyewa | ✅ Done |
| 4 | Token storage | `TokenStorage` (SharedPreferences): simpan access/refresh token saat login, dibaca di tiap request, dihapus saat logout. Splash memulihkan sesi (cek `exp` JWT → refresh → `/auth/me`) sehingga tidak perlu login ulang | ✅ Done |
| 4 | Profile & Logout | `ProfileScreen` menampilkan data `/auth/me` (foto, nama, email, HP, alamat, pekerjaan), pull-to-refresh, logout dengan konfirmasi. Tombol Profil ditambahkan di dashboard vendor/admin/pending | ✅ Done |
| 4 | CRUD Produk | `/api-products` (`ApiProductsScreen`): GET list + search + paginasi, POST tambah, PUT edit, DELETE hapus ke `/auth/products` (wajib token) | ✅ Done |
| 4 | Hapus registrasi | `RegisterScreen`, `RoleSelectScreen`, `VendorRegisterScreen`, route-nya, tombol "Daftar" & `AuthService.register` dihapus — DummyJSON tidak bisa membuat akun yang bisa login, jadi semua akun berasal dari DummyJSON | ✅ Done |
| 4 | Tautan akun → toko | `AuthService.dummyJsonAccountLinks`: akun DummyJSON ditautkan ke user lokal (emilys→usr_001, oliviaw→usr_002/vnd_001, alexanderj→usr_003/vnd_002, avat→usr_005/vnd_003 pending, averyp→usr_004). Identitas dari API; role, status & toko (rekening, lokasi) dari data lokal. Akun tanpa tautan: admin→admin, lainnya→penyewa. Kartu "Data Toko" di Profil | ✅ Done |
| 4 | Login pakai email | `/auth/login` DummyJSON hanya menerima username → email dicari dulu via `GET /users/filter?key=email`, lalu login dengan username-nya. Field Login = Email (validateEmail) | ✅ Done |
| 4 | Auth & Products murni API | Hapus `users.json`, `products.json`, `categories.json` (+ folder `lib/data/dummy`). Beranda/Cari/Detail/Booking pakai `catalogProvider` → `GET /auth/products` & `/auth/products/categories`. Tambahan sewa di `rental_catalog.dart` (kategori→toko, tarif Rp/hari = 1% harga × Rp16.000, aturan). Role: admin API → admin, pemilik toko → pengusaha, lainnya → penyewa | ✅ Done |
| 4 | Hapus file tak terpakai | 9 mock (booking, rental, payment, review, chat, notification, dispute, blacklist, vendor_document), model `booking.dart` & `others.dart`, folder `assets/` (isinya hanya .gitkeep), `data_loading_test.dart` | ✅ Done |
| - | Tests | `api_auth_crud_test.dart` (MockClient: login, token, restore/refresh/expired, logout, CRUD) & `api_screens_test.dart` (Profil + CRUD di 360x740) | ✅ 34 passed |

---

## 2026-11-23 — Fix build & runtime (Flutter 3.47.5 / Dart 3.13)

| Phase | Task | Description | Status |
|-------|------|-------------|--------|
| 0 | Upgrade deps | Semua paket ke versi mayor terbaru (freezed 4, freezed_annotation 3, riverpod 3, go_router 18, intl 0.20, flutter_map 8, dst). `hive_generator` (discontinued, tidak dipakai) dikeluarkan karena mengunci analyzer lama. + `cupertino_icons` (dibutuhkan cupertino_ui dari go_router 18) | ✅ Done |
| 0 | Freezed 4 | Kode lama hasil freezed 2 memakai `final` di parameter konstruktor (ilegal sejak Dart 3.13). Model jadi `abstract class`, regenerate. `AuthState` duplikat di `user.dart` dihapus | ✅ Done |
| 0 | JSON snake_case | `build.yaml` → `field_rename: snake`; dulu `User.fromJson` crash (no_hp vs noHp) → app crash sebelum `runApp` | ✅ Done |
| 0 | Ikon | `phosphor_flutter` 2.1.0 tidak bisa dikompilasi (IconData final). Diganti `AppIcons` (const IconData, font Phosphor yang sama). 3 nama ikon tidak valid diperbaiki | ✅ Done |
| 1 | Router | GoRouter dibuat sekali + `refreshListenable` (dulu reset ke splash tiap login); redirect tanpa loop `/vendor/pending`; admin → `/admin/dashboard`; `homePathFor()` | ✅ Done |
| 1 | Auth | `StateNotifier` → `Notifier` (Riverpod 3); vendor `menunggu_verifikasi` bisa login → `/vendor/pending`; cek `mounted` setelah `await` | ✅ Done |
| 2 | UI | Overflow kartu "Toko Terdekat" & tombol "Tanya" di HP 360px; sort "Terdekat" + radius di search diimplementasi; search tidak lagi menampilkan barang non-tersedia | ✅ Done |
| - | Tests | `test/`: router guard (anti-loop), parsing JSON dummy, alur splash→login→dashboard, smoke test layar di 800x600 & 360x740 | ✅ 16 passed |
| - | Verify | `flutter analyze` → No issues; `flutter build web` → OK. Android belum diverifikasi (Android SDK tidak terpasang di mesin ini) | ✅ Done |

---

## 2025-11-23 (Planned)

| Phase | Task | Description | Status |
|-------|------|-------------|--------|
| 3 | BookingRepository | Created BookingRepository dengan conflict check | 🔄 Planned |
| 3 | MyBookingsScreen | List bookings user dengan filter status | 🔄 Planned |
| 3 | BookingDetailScreen | Detail + aksi (batalkan, bayar DP, chat) | 🔄 Planned |
| 3 | VendorBookingsScreen | List booking masuk + konfirmasi/tolak dengan alasan | 🔄 Planned |

---

> **Contoh entry baru:**
> ```markdown
> ## 2025-11-23
> 
> | Phase | Task | Description | Status |
> |-------|------|-------------|--------|
> | 3 | BookingRepository | Created BookingRepository dengan conflict check | ✅ Done |
> | 3 | MyBookingsScreen | List bookings user dengan filter status | ✅ Done |
> ```
