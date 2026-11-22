# Rentory v2: Marketplace Sewa Barang — Full Design Document

> **Status**: Ready for review
> **Last Updated**: 2025-11-22
> **Project**: `rentory` (Flutter + Dummy JSON for Products & Auth only)

---

## 1. Gambaran Umum

**Rentory** adalah **marketplace multi-vendor** penyewaan barang. Banyak pengusaha sewa (mitra) bisa membuka lapak di 1 aplikasi. Penyewa menelusuri katalog dari semua toko, booking, bayar, dan review.

### 3 Role Utama

| Role | Deskripsi |
|------|-----------|
| **Penyewa** | Cari barang dari berbagai toko, booking, bayar DP/lunas, serah terima, review |
| **Pengusaha (Mitra)** | Kelola toko & barang sendiri, verifikasi booking, serah terima & pengembalian, hitung denda/deposit, laporan per toko |
| **Admin Platform** | Verifikasi pengusaha baru, moderasi (takedown, review, blokir), tangani sengketa, kelola kategori global & pengaturan platform |

### Aturan Emas (Non-Negotiable)

> **Semua data barang, transaksi, dan penyewa-per-toko HARUS punya `vendor_id`.**
> Pengusaha A **tidak boleh** bisa melihat atau mengedit data Pengusaha B.
> Pengecekan ini **dijalankan di backend / service layer** (bukan cuma UI).

---

## 2. Matriks Hak Akses (Updated)

| Fitur | Penyewa | Pengusaha | Admin |
|-------|---------|-----------|-------|
| Registrasi | ✅ Langsung | ✅ + Verifikasi admin | ❌ (dibuat sistem) |
| Lihat katalog semua toko | ✅ | ✅ | ✅ |
| Cari/filter barang | ✅ | ✅ | ✅ |
| **Filter "dekat saya" (Haversine)** | ✅ | ✅ | ✅ |
| CRUD barang | ❌ | ✅ (barang sendiri) | Takedown saja |
| Booking barang | ✅ | ❌ | ❌ |
| Konfirmasi/tolak booking | ❌ | ✅ (tokonya) | ❌ |
| Serah terima & pengembalian | ❌ | ✅ | ❌ |
| Catat kondisi barang (foto) | Lihat | ✅ | Lihat (sengketa) |
| Pembayaran | Bayar & upload bukti | Verifikasi bukti | Lihat |
| Perpanjang sewa | Ajukan | Setujui/tolak | ❌ |
| Review & rating | Beri | Balas | Moderasi |
| Chat | ✅ | ✅ | ❌ |
| Laporan penjualan | ❌ | ✅ (tokonya) | ✅ Semua toko |
| Verifikasi pengusaha | ❌ | ❌ | ✅ |
| Blokir user/toko | ❌ | Blacklist penyewa (tokonya) | ✅ Global |
| Kelola kategori global | ❌ | ❌ | ✅ |
| Pengaturan platform | ❌ | Pengaturan toko | ✅ |

---

## 3. Fitur per Role (Detail)

### A. Penyewa

1. **Akun**
   - Registrasi, login, lupa password
   - Profil: nama, kontak, alamat, no. identitas, foto identitas
   - Verifikasi identitas (opsional tapi disarankan)

2. **Katalog & Pencarian**
   - Telusuri barang dari semua toko
   - Filter: kategori, harga, lokasi/kota, **radius "dekat saya" (km)**, rating, tersedia di tanggal tertentu
   - Halaman detail barang: foto, harga (jam/hari/minggu), deskripsi, aturan sewa, kalender ketersediaan, info toko
   - Halaman profil toko: daftar barang, rating, info pengusaha

3. **Booking**
   - Pilih barang, tanggal mulai & selesai, qty
   - Estimasi biaya otomatis: sewa + deposit (persen dari toko) + opsi antar (jika dipilih)
   - Ajukan booking, batalkan sebelum dikonfirmasi
   - Status: `menunggu` → `dikonfirmasi` / `ditolak` / `dibatalkan`

4. **Sewa Saya**
   - Sewa aktif + hitung mundur jatuh tempo
   - Ajukan perpanjangan
   - Lihat denda berjalan (jika terlambat)
   - Lihat kondisi barang saat serah terima (foto)

5. **Pembayaran**
   - Lihat tagihan (DP / pelunasan / denda / deposit kembali)
   - Bayar transfer ke **rekening pengusaha** (lihat nomor rekening di detail booking)
   - Upload bukti transfer
   - Unduh struk (generate otomatis setelah verifikasi)

6. **Review & Riwayat**
   - Beri rating (1-5) + ulasan setelah sewa `selesai`
   - Riwayat semua sewa dari berbagai toko
   - Favorit/wishlist barang

7. **Chat & Notifikasi**
   - Chat dengan pengusaha (tanya ketersediaan, nego)
   - Notifikasi: booking dikonfirmasi/ditolak, reminder jatuh tempo, denda, pengembalian deposit

---

### B. Pengusaha Sewa (Mitra)

1. **Registrasi & Verifikasi Toko**
   - Daftar sebagai pengusaha: data diri, nama toko, deskripsi, alamat/lokasi, **koordinat (lat/lng)**, kontak
   - **Wajib isi rekening usaha**: bank, nomor rekening, atas nama
   - Upload dokumen: KTP, selfie + KTP, opsional NIB/izin usaha
   - Status akun: `menunggu_verifikasi` → `aktif` / `ditolak` / `ditangguhkan`
   - Belum aktif = belum bisa menayangkan barang

2. **Profil Toko**
   - Edit nama, logo, deskripsi, jam operasional, alamat, koordinat
   - Aturan toko: tarif denda/hari, persen deposit, kebijakan pembatalan, **rekening usaha**
   - **Opsi pengambilan**: `ambil_di_toko` (wajib) + `diantar` (opsional)
   - Jika `diantar`: biaya antar per km, radius maksimal antar

3. **Manajemen Barang**
   - CRUD barang: nama, kategori, deskripsi, foto (multiple), harga per jam/hari/minggu, stok
   - Status: `tersedia`, `disewa`, `dibooking`, `maintenance`, `nonaktif`
   - Aturan khusus per barang (opsional)

4. **Booking Masuk**
   - Daftar booking, filter by status
   - Konfirmasi atau tolak (dengan alasan wajib jika tolak)
   - Cek bentrok jadwal otomatis (barang yg sama, tanggal overlap)
   - Lihat profil & rating penyewa sebelum konfirmasi

5. **Transaksi Sewa**
   - **Serah terima**: catat kondisi keluar + foto (multiple), tandai `aktif`
   - **Pengembalian**: catat kondisi balik + foto, hitung denda (telat + kerusakan) + ganti rugi, hitung deposit kembali, tandai `selesai`
   - **Perpanjangan**: setujui/tolak, hitung biaya tambahan
   - **Walk-in**: input manual penyewa datang langsung (buat rental tanpa booking)

6. **Pembayaran**
   - Verifikasi bukti transfer penyewa
   - Catat pembayaran tunai (jika COD)
   - Struk otomatis (PDF)

7. **Data Penyewa (Per Toko)**
   - Riwayat penyewa yang pernah sewa di toko ini
   - Catatan internal & blacklist penyewa bermasalah (hanya efek di toko ini)

8. **Maintenance**
   - Tandai barang diperbaiki, catat biaya & tanggal
   - Barang `maintenance` otomatis tidak bisa disewa/dibooking

9. **Dashboard & Laporan**
   - Ringkasan: booking pending, jatuh tempo hari ini, terlambat
   - Pendapatan per periode (harian/mingguan/bulanan)
   - Barang paling laku
   - Export PDF/Excel

10. **Review & Chat**
    - Lihat & balas review
    - Chat dengan penyewa

---

### C. Admin Platform

1. **Verifikasi Pengusaha**
   - Antrian pengajuan pengusaha baru
   - Cek dokumen, setujui/tolak (alasan wajib jika tolak)
   - Tangguhkan/blokir toko bermasalah

2. **Moderasi**
   - Takedown barang yang melanggar
   - Moderasi review (hapus yg toxic/spam)
   - Blokir user global

3. **Sengketa**
   - Terima laporan dari penyewa/pengusaha
   - Lihat bukti: foto kondisi, chat, pembayaran
   - Catat keputusan (menang pihak siapa, denda, dll)

4. **Kelola Master Data**
   - Kategori barang global (CRUD)
   - Pengaturan platform (komisi — *currently disabled/gratis*)

5. **Dashboard Platform**
   - Jumlah toko, penyewa, transaksi
   - Pertumbuhan, toko teraktif
   - Laporan global

---

## 4. Alur Utama

### Alur Pendaftaran Pengusaha
```
1. User daftar akun → pilih "Daftar sebagai Pengusaha Sewa"
2. Isi data toko + upload dokumen + **isi rekening usaha + koordinat lat/lng**
3. Status: **menunggu_verifikasi**
4. Admin cek dokumen → **setujui** atau **tolak** (alasan via notifikasi)
5. Disetujui → role pengusaha aktif → bisa menayangkan barang
```

### Alur Sewa (End-to-End)
```
1. Penyewa cari barang (filter kategori, harga, lokasi, "dekat saya", tanggal)
2. Penyewa ajukan booking (tgl mulai, selesai, qty, pilih opsi pengambilan)
3. Sistem cek bentrok jadwal (barang yg sama, tgl overlap)
4. Pengusaha dapat notifikasi → konfirmasi atau tolak (w/ alasan)
5. Penyewa bayar DP (minimal persen_deposit toko) → upload bukti
6. Pengusaha verifikasi bukti → status booking: dikonfirmasi
7. Hari H: Serah terima → catat kondisi keluar + foto → rental status: **aktif**
8. Selama sewa: penyewa bisa ajukan perpanjangan → pengusaha setujui/tolak
9. Hari kembali: Pengembalian → catat kondisi balik + foto → hitung:
   - Denda keterlambatan (tarif_denda/hari × hari telat)
   - Biaya ganti rugi (jika rusak/hilang)
   - Deposit kembali = deposit - denda - ganti rugi (min 0)
10. Pelunasan sisa (jika ada) → deposit dikembalikan
11. Transaksi **selesai** → penyewa bisa kasih review
```

### Satu Akun, Dua Peran
> User bisa punya **profil penyewa + profil toko** dalam 1 akun, dengan **switch mode** di UI.
> Lebih praktis daripada membuat 2 akun terpisah.

---

## 5. Rancangan Database (Ringkas — Logical Schema)

> **Catatan**: Backend pakai **Dummy JSON (Products & Auth only)**. Sisanya pakai **mock lokal / in-memory state** (Riverpod/Provider/BLoC). Skema di bawah adalah *logical reference* untuk struktur data di mock.

### Core Tables

```sql
-- users (dummy JSON: users.json)
users: id, nama, email, password_hash, no_hp, alamat, no_identitas, foto_identitas, is_verified, status, created_at

-- user_roles (dummy JSON: users.json -> role field)
user_roles: user_id, role (penyewa | pengusaha | admin)

-- vendors (MOCK LOKAL — bukan dari JSON)
vendors: id, user_id, nama_toko, deskripsi, logo, alamat, kota, latitude, longitude, kontak, jam_operasional,
         status_verifikasi (menunggu/aktif/ditolak/ditangguhkan), alasan_tolak,
         tarif_denda_per_hari, persen_deposit, rekening_bank, rekening_nomor, rekening_atas_nama,
         kebijakan_batal, opsi_pengambilan (json: ["ambil_di_toko","diantar"]),
         biaya_antar_per_km, radius_antar_max_km, rating_rata, total_review, created_at

-- vendor_documents (MOCK LOKAL)
vendor_documents: id, vendor_id, jenis (ktp/selfie/nib), file_path, status, created_at

-- categories (dummy JSON: categories.json)
categories: id, nama, deskripsi, icon

-- items/products (dummy JSON: products.json)
items: id, vendor_id, category_id, nama, deskripsi, foto (json array),
       harga_per_jam, harga_per_hari, harga_per_minggu, stok,
       status (tersedia/disewa/dibooking/maintenance/nonaktif),
       aturan_khusus, rating_rata, total_review, created_at

-- bookings (MOCK LOKAL)
bookings: id, user_id (penyewa), vendor_id, item_id, qty,
          tgl_mulai, tgl_selesai, opsi_pengambilan (ambil_di_toko/diantar),
          alamat_antar (json), biaya_antar_estimasi,
          status (menunggu/dikonfirmasi/ditolak/dibatalkan),
          alasan_tolak, total_estimasi, dp_dibayar, created_at

-- rentals (MOCK LOKAL)
rentals: id, booking_id (nullable, for walk-in), vendor_id, user_id (penyewa),
         tgl_mulai, jatuh_tempo, tgl_kembali_aktual,
         total_biaya_sewa, diskon, denda_telat, biaya_ganti_rugi, deposit, biaya_antar,
         status (aktif/selesai/dibatalkan/sengketa), created_at

-- rental_items (MOCK LOKAL)
rental_items: id, rental_id, item_id, qty, harga_satuan,
              kondisi_keluar (json), foto_kondisi_keluar (json array),
              kondisi_kembali (json), foto_kondisi_kembali (json array),
              biaya_ganti_rugi

-- payments (MOCK LOKAL)
payments: id, rental_id, jumlah, jenis (dp/pelunasan/denda/deposit_kembali/biaya_antar),
          metode (transfer/tunai), bukti_path, status_verifikasi (pending/verified/rejected),
          verified_by (vendor_id), verified_at, created_at

-- extensions (MOCK LOKAL)
extensions: id, rental_id, jatuh_tempo_baru, biaya_tambahan, status (pending/approved/rejected), created_at

-- maintenances (MOCK LOKAL)
maintenances: id, item_id, deskripsi, biaya, tgl_mulai, tgl_selesai, status

-- reviews (MOCK LOKAL)
reviews: id, rental_id, user_id, vendor_id, item_id, rating (1-5), komentar, balasan_vendor, created_at

-- vendor_blacklists (MOCK LOKAL)
vendor_blacklists: id, vendor_id, user_id, alasan, created_at

-- chats/messages (MOCK LOKAL)
messages: id, pengirim_id, penerima_id, rental_id/booking_id (nullable), isi, created_at

-- disputes (MOCK LOKAL)
disputes: id, rental_id, pelapor_id, deskripsi, bukti (json array), status, keputusan_admin, decided_at

-- notifications (MOCK LOKAL)
notifications: id, user_id, judul, isi, tipe, reference_id, is_read, created_at

-- settings (MOCK LOKAL)
settings: key, value (platform config: komisi_persen=0, dll)
```

### Relasi Inti (Logical)

```
users 1──1 vendors (pengusaha punya 1 toko; opsional nanti bisa multi-toko)
vendors 1──N items
vendors 1──N bookings (sebagai toko)
vendors 1──N rentals
users 1──N bookings/rentals (sebagai penyewa)
items 1──N bookings/rental_items
bookings 1──1 rentals (optional, walk-in bypass)
rentals 1──N rental_items
rentals 1──N payments
rentals 1──N extensions
rentals 1──1 reviews
items 1──N maintenances
```

> **Penting**: Hampir semua query sisi pengusaha **WAJIB** difilter `WHERE vendor_id = <toko milik user login>`.
> Ini di-enforce di **service layer / repository**, bukan cuma UI.

---

## 6. Keputusan Desain Final (Design Decisions)

| # | Topik | Keputusan | Rationale |
|---|-------|-----------|-----------|
| 1 | **Pembayaran** | Transfer langsung ke rekening pengusaha | Simpel, no PG fee, cocok tugas/skripsi |
| 2 | **Rekening Usaha** | Wajib diisi saat registrasi pengusaha | Penyewa butuh nomor rekening untuk bayar |
| 3 | **Komisi Platform** | **Gratis (0%)** | Tidak perlu bikin fitur komisi, invoice, payout |
| 4 | **Lokasi & "Dekat Saya"** | Filter radius (km) pakai **Haversine formula** client-side | Data mock < 100 toko, zero cost, no API key |
| 5 | **Koordinat Toko** | `latitude`, `longitude` wajib di `vendors` | Butuh buat Haversine & peta nanti |
| 6 | **Pengambilan Barang** | 2 opsi: `ambil_di_toko` (wajib) + `diantar` (opsional) | Fleksibel, realistis |
| 7 | **Biaya Antar** | Per km + radius maksimal (set per toko) | Realistis, simple calculation |
| 8 | **Backend** | **Dummy JSON hanya untuk Products & Auth** | Requirement user; sisanya mock lokal |
| 9 | **Auth Data** | API DummyJSON `/auth/login` + `/auth/me` → login, role, profil (registrasi ditiadakan) | Single source of truth untuk user *(diubah: dulu users.json)* |
| 10 | **Products Data** | API DummyJSON `/auth/products` + `/auth/products/categories` → katalog, search, detail; data sewa tambahan di `rental_catalog.dart` | Single source of truth untuk barang *(diubah: dulu products.json)* |
| 11 | **Vendor/Booking/Rental/Chat/dll** | **Mock lokal (in-memory/state)** | Bisa pakai Riverpod/Provider/BLoC, persist ke local storage (shared_preferences/hive) kalau perlu |
| 12 | **Peta Visual (Future)** | OpenStreetMap + MapLibre GL (gratis, no API key) | Kalau nanti mau tampilkan pin toko & routing |

---

## 7. Arsitektur Teknis (Flutter)

### Stack
- **Flutter** (latest stable)
- **State Management**: Riverpod (recommended) / Provider / BLoC — *pilih 1*
- **Local Persistence**: `shared_preferences` (simple) atau `hive` (kalau butuh query)
- **Routing**: `go_router` (declarative, web-ready)
- **DI/Service Locator**: `get_it` + `injectable` (optional)
- **JSON Parsing**: `json_serializable` / `freezed` (model generation)
- **Date/Time**: `intl` + `timezone`
- **Image Picker**: `image_picker` (camera/gallery untuk foto kondisi)
- **PDF Generate**: `pdf` + `printing` (struk)
- **Maps (Future)**: `maplibre_gl` + `flutter_map` (OSM)

### Project Structure (Feature-First)

```
lib/
├── core/
│   ├── constants/          # App constants, enums
│   ├── utils/              # Helpers: haversine, currency format, date format
│   ├── errors/             # Failure classes, exceptions
│   ├── theme/              # App theme (light/dark)
│   └── routing/            # go_router config
├── data/
│   ├── dummy/              # HANYA 3 FILE INI
│   │   ├── users.json
│   │   ├── products.json
│   │   └── categories.json
│   ├── models/             # Generated models (freezed/json_serializable)
│   │   ├── user.dart
│   │   ├── product.dart
│   │   ├── category.dart
│   │   └── vendor.dart     # Mock model (bukan dari JSON)
│   ├── services/           # HANYA 2 SERVICE PAKAI JSON
│   │   ├── auth_service.dart
│   │   └── product_service.dart
│   ├── mock/               # SEMUA DATA LAIN: MOCK LOKAL
│   │   ├── vendor_mock.dart
│   │   ├── booking_mock.dart
│   │   ├── rental_mock.dart
│   │   ├── payment_mock.dart
│   │   ├── chat_mock.dart
│   │   ├── review_mock.dart
│   │   ├── maintenance_mock.dart
│   │   ├── dispute_mock.dart
│   │   └── notification_mock.dart
│   └── repositories/       # Repository pattern (wrap service/mock)
│       ├── auth_repository.dart
│       ├── product_repository.dart
│       ├── vendor_repository.dart
│       ├── booking_repository.dart
│       └── ...
├── presentation/
│   ├── auth/               # Login, Register, Forgot Password
│   ├── home/               # Katalog, Search, Filter, Nearby
│   ├── product/            # Detail, Availability Calendar
│   ├── booking/            # Create Booking, My Bookings
│   ├── rental/             # Active Rentals, Handover, Return, Extension
│   ├── payment/            # Bills, Upload Proof, Receipt
│   ├── profile/            # User Profile, Switch Role (Penyewa/Toko)
│   ├── vendor/             # Vendor Dashboard (Pengusaha only)
│   │   ├── store_profile/
│   │   ├── products/
│   │   ├── bookings/
│   │   ├── rentals/
│   │   ├── payments/
│   │   ├── customers/
│   │   ├── maintenance/
│   │   ├── reports/
│   │   └── reviews/
│   ├── admin/              # Admin Panel (Admin only)
│   │   ├── vendor_verification/
│   │   ├── moderation/
│   │   ├── disputes/
│   │   ├── categories/
│   │   └── dashboard/
│   ├── chat/               # Chat List, Chat Room
│   ├── notifications/      # Notification Center
│   └── shared/             # Shared widgets: buttons, cards, inputs, etc.
└── main.dart
```

---

## 8. Tahapan Implementasi (Phased)

| Tahap | Fokus | Deliverable | Estimasi |
|-------|-------|-------------|----------|
| **0** | **Setup & Foundation** | Flutter project, riverpod, go_router, theme, dummy JSON files, auth_service, product_service, model generation | 1-2 hari |
| **1** | **Auth & Role** | Login, Register (Penyewa/Pengusaha), Role switch, Profil user, Verifikasi pengusaha (admin flow mock) | 2-3 hari |
| **2** | **Katalog & Produk** | Home (grid produk), Search & Filter (kategori, harga, kota), **Nearby (Haversine)**, Detail Produk (kalender disabilitas), Profil Toko | 3-4 hari |
| **3** | **Booking** | Buat booking (tgl, qty, opsi antar), Cek bentrok, Konfirmasi/Tolak pengusaha, Status booking | 3-4 hari |
| **4** | **Transaksi Sewa** | Serah terima (kondisi + foto), Pengembalian (kondisi + foto + hitung denda/ganti rugi/deposit), Perpanjangan, Walk-in | 4-5 hari |
| **5** | **Pembayaran** | Tagihan DP/Pelunasan, Upload bukti, Verifikasi pengusaha, Generate struk PDF | 2-3 hari |
| **6** | **Interaksi** | Review & Rating, Chat (basic), Notifikasi, Wishlist | 2-3 hari |
| **7** | **Dashboard & Pelengkap** | Vendor Dashboard (ringkasan, laporan, export), Maintenance, Admin Panel (verifikasi, moderasi, sengketa, kategori) | 3-4 hari |

> **Total estimasi**: ~20-28 hari kerja
> **MVP Solid (Tahap 0-4)**: ~13-18 hari — sudah bisa demo full flow sewa
> **Tahap 5-7**: Polish & fitur lengkap

---

## 9. Dummy JSON Structure (Reference)

### `users.json`
```json
[
  {
    "id": "usr_001",
    "email": "admin@rentory.com",
    "password": "hashed_password",
    "nama": "Admin Rentory",
    "no_hp": "08111111111",
    "role": "admin",
    "is_verified": true,
    "status": "aktif",
    "created_at": "2024-01-01T00:00:00Z"
  },
  {
    "id": "usr_002",
    "email": "budi@toko.com",
    "password": "hashed_password",
    "nama": "Budi Santoso",
    "no_hp": "081234567890",
    "role": "pengusaha",
    "is_verified": true,
    "status": "aktif",
    "created_at": "2024-01-15T08:00:00Z"
  },
  {
    "id": "usr_003",
    "email": "siti@toko.com",
    "password": "hashed_password",
    "nama": "Siti Rahayu",
    "no_hp": "082198765432",
    "role": "pengusaha",
    "is_verified": true,
    "status": "aktif",
    "created_at": "2024-02-20T10:30:00Z"
  },
  {
    "id": "usr_004",
    "email": "andi@sewa.com",
    "password": "hashed_password",
    "nama": "Andi Wijaya",
    "no_hp": "081345678901",
    "role": "penyewa",
    "is_verified": true,
    "status": "aktif",
    "created_at": "2024-03-01T09:00:00Z"
  }
]
```

### `categories.json`
```json
[
  { "id": "cat_001", "nama": "Kamera & Video", "icon": "camera", "deskripsi": "Kamera DSLR, Mirrorless, Action Cam, Lens" },
  { "id": "cat_002", "nama": "Outdoor & Camping", "icon": "tent", "deskripsi": "Tenda, Sleeping Bag, Carrier, Kompor" },
  { "id": "cat_003", "nama": "Elektronik", "icon": "laptop", "deskripsi": "Laptop, Proyektor, Drone, Speaker" },
  { "id": "cat_004", "nama": "Fashion & Aksesoris", "icon": "shirt", "deskripsi": "Tas, Jam, Aksesoris Adat, Kostum" },
  { "id": "cat_005", "nama": "Alat Bangun & Tukang", "icon": "tools", "deskripsi": "Bor, Gerinda, Generator, Alat Survei" }
]
```

### `products.json`
```json
[
  {
    "id": "prd_001",
    "vendor_id": "vnd_001",
    "category_id": "cat_001",
    "nama": "Canon EOS R6 + RF 24-70mm",
    "deskripsi": "Full-frame mirrorless, cocok foto/video event",
    "foto": ["assets/products/r6_1.jpg", "assets/products/r6_2.jpg"],
    "harga_per_jam": 75000,
    "harga_per_hari": 250000,
    "harga_per_minggu": 1500000,
    "stok": 3,
    "status": "tersedia",
    "aturan_khusus": "Wajib deposit 30%, max ISO 6400 untuk video",
    "rating_rata": 4.9,
    "total_review": 45,
    "created_at": "2024-01-20T09:00:00Z"
  },
  {
    "id": "prd_002",
    "vendor_id": "vnd_001",
    "category_id": "cat_001",
    "nama": "Sony A7 IV + 24-70mm GM",
    "deskripsi": "Hybrid kamera, AF super cepat",
    "foto": ["assets/products/a7iv_1.jpg"],
    "harga_per_hari": 300000,
    "harga_per_minggu": 1800000,
    "stok": 2,
    "status": "tersedia",
    "aturan_khusus": "",
    "rating_rata": 4.7,
    "total_review": 32,
    "created_at": "2024-02-10T14:00:00Z"
  },
  {
    "id": "prd_003",
    "vendor_id": "vnd_002",
    "category_id": "cat_002",
    "nama": "Tenda Doitel 4 Orang",
    "deskripsi": "Tenda gunung 4 musim, double layer",
    "foto": ["assets/products/tenda_4.jpg"],
    "harga_per_hari": 80000,
    "harga_per_minggu": 400000,
    "stok": 10,
    "status": "tersedia",
    "aturan_khusus": "Dilarang merokok di dalam tenda",
    "rating_rata": 4.6,
    "total_review": 78,
    "created_at": "2024-03-01T11:00:00Z"
  }
]
```

> **Note**: `vendor_id` di products.json merujuk ke data vendor di **mock lokal** (`vendor_mock.dart`), bukan dari file JSON.

---

## 10. Mock Data Vendor (Contoh — `vendor_mock.dart`)

```dart
final List<Vendor> mockVendors = [
  Vendor(
    id: 'vnd_001',
    userId: 'usr_002',
    namaToko: 'Sewa Kamera Jaya',
    deskripsi: 'Penyewaan kamera & lens profesional',
    logo: 'assets/logos/kamera_jaya.png',
    alamat: 'Jl. Cihampelas No. 123',
    kota: 'Bandung',
    latitude: -6.9147,
    longitude: 107.6098,
    kontak: '0812-3456-7890',
    jamOperasional: '09:00-21:00',
    statusVerifikasi: VendorStatus.aktif,
    rekening: BankAccount(
      bank: 'BCA',
      nomorRekening: '1234567890',
      atasNama: 'Budi Santoso',
    ),
    tarifDendaPerHari: 50000,
    persenDeposit: 30,
    kebijakanBatal: 'Bebas 24 jam sebelum sewa, setelah itu DP tidak dikembalikan',
    opsiPengambilan: [OpsiPengambilan.ambilDiToko, OpsiPengambilan.diantar],
    biayaAntarPerKm: 5000,
    radiusAntarMaxKm: 15,
    ratingRata: 4.8,
    totalReview: 127,
  ),
  Vendor(
    id: 'vnd_002',
    userId: 'usr_003',
    namaToko: 'Tenda & Outdoor Bandung',
    deskripsi: 'Sewa tenda, sleeping bag, carrier gunung',
    logo: 'assets/logos/tenda_outdoor.png',
    alamat: 'Jl. Setiabudi No. 45',
    kota: 'Bandung',
    latitude: -6.8956,
    longitude: 107.6189,
    kontak: '0821-9876-5432',
    jamOperasional: '08:00-20:00',
    statusVerifikasi: VendorStatus.aktif,
    rekening: BankAccount(
      bank: 'Mandiri',
      nomorRekening: '9876543210',
      atasNama: 'Siti Rahayu',
    ),
    tarifDendaPerHari: 25000,
    persenDeposit: 25,
    kebijakanBatal: 'Bebas 48 jam sebelum sewa',
    opsiPengambilan: [OpsiPengambilan.ambilDiToko], // tidak antar
    biayaAntarPerKm: 0,
    radiusAntarMaxKm: 0,
    ratingRata: 4.5,
    totalReview: 89,
  ),
];
```

---

## 11. Haversine Utility (Client-Side "Nearby")

```dart
// lib/core/utils/location_utils.dart
import 'dart:math';

double haversineKm(double lat1, double lng1, double lat2, double lng2) {
  const R = 6371.0; // Earth radius in km
  final dLat = _deg2rad(lat2 - lat1);
  final dLng = _deg2rad(lng2 - lng1);
  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(_deg2rad(lat1)) * cos(_deg2rad(lat2)) *
      sin(dLng / 2) * sin(dLng / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return R * c;
}

double _deg2rad(double deg) => deg * pi / 180;

// Usage di ProductRepository / HomeViewModel:
List<Vendor> getNearbyVendors(double userLat, double userLng, {double radiusKm = 10}) {
  return mockVendors
      .where((v) => haversineKm(userLat, userLng, v.latitude, v.longitude) <= radiusKm)
      .toList()
    ..sort((a, b) => haversineKm(userLat, userLng, a.latitude, a.longitude)
        .compareTo(haversineKm(userLat, userLng, b.latitude, b.longitude)));
}
```

---

## 12. Catatan Penting untuk Implementasi

1. **Isolasi Data Vendor**: Setiap repository/query pengusaha **harus** filter `vendor_id == currentUser.vendorId`. Enforce di repository layer, jangan andalkan UI.
2. **Status Barang Otomatis**: Saat booking `dikonfirmasi` → item status `dibooking`. Saat rental `aktif` → `disewa`. Saat `selesai`/`dibatalkan` → `tersedia` (kalau stok > 0). Handle di `BookingRepository` / `RentalRepository`.
3. **Bentrok Jadwal**: Cek overlap di `BookingRepository.createBooking()` — query existing bookings/rentals untuk `item_id` yang `tgl_mulai < new_tgl_selesai && tgl_selesai > new_tgl_mulai`.
4. **Deposit & Denda Calculation**: Logic di `RentalRepository.calculateReturn()` — return breakdown: `deposit_kembali`, `denda_telat`, `biaya_ganti_rugi`, `sisa_pelunasan`.
5. **Struk PDF**: Generate di `PaymentRepository.generateReceipt()` pakai package `pdf`. Include: toko info, penyewa info, item, biaya breakdown, timestamp, tanda tangan digital.
6. **Persist Mock Data**: Kalau mau data survive hot restart, simpan ke `shared_preferences` (encode JSON) atau `hive` box. Load di init app.
7. **Role Switch**: User dgn `role: pengusaha` punya akses ke `/vendor/*` routes. Guard di `go_router` redirect.
8. **Admin Guard**: Route `/admin/*` hanya accessible kalau `user.role == 'admin'`.

---

## 13. Checklist Review (Untukmu, Sayang ✨)

- [ ] Role & hak akses sudah sesuai?
- [ ] Alur sewa end-to-end sudah lengkap (termasuk walk-in, perpanjangan, denda)?
- [ ] Skema database logis sudah cover semua kebutuhan?
- [ ] Keputusan desain (pembayaran, komisi, lokasi, pengambilan, backend) sudah benar?
- [ ] Arsitektur Flutter & struktur folder sudah jelas?
- [ ] Dummy JSON scope (hanya users, products, categories) sudah tegas?
- [ ] Mock data vendor sudah representatif (rekening, koordinat, opsi antar)?
- [ ] Tahapan implementasi realistis untuk timeline tugas?
- [ ] Ada yang mau ditambah/dikurangi/ubah sebelum mulai coding?

---

**Siap lanjut ke Tahap 0 (Setup Project) kalo sudah approve, sayang~ 💕(◕‿◕)★**