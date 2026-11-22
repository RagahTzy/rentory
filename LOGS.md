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
