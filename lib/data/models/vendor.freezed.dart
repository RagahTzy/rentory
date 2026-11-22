// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) {
  return _BankAccount.fromJson(json);
}

/// @nodoc
mixin _$BankAccount {
  String get bank => throw _privateConstructorUsedError;
  String get nomorRekening => throw _privateConstructorUsedError;
  String get atasNama => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res, BankAccount>;
  @useResult
  $Res call({String bank, String nomorRekening, String atasNama});
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res, $Val extends BankAccount>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = null,
    Object? nomorRekening = null,
    Object? atasNama = null,
  }) {
    return _then(_value.copyWith(
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekening: null == nomorRekening
          ? _value.nomorRekening
          : nomorRekening // ignore: cast_nullable_to_non_nullable
              as String,
      atasNama: null == atasNama
          ? _value.atasNama
          : atasNama // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountImplCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$$BankAccountImplCopyWith(
          _$BankAccountImpl value, $Res Function(_$BankAccountImpl) then) =
      __$$BankAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bank, String nomorRekening, String atasNama});
}

/// @nodoc
class __$$BankAccountImplCopyWithImpl<$Res>
    extends _$BankAccountCopyWithImpl<$Res, _$BankAccountImpl>
    implements _$$BankAccountImplCopyWith<$Res> {
  __$$BankAccountImplCopyWithImpl(
      _$BankAccountImpl _value, $Res Function(_$BankAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = null,
    Object? nomorRekening = null,
    Object? atasNama = null,
  }) {
    return _then(_$BankAccountImpl(
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRekening: null == nomorRekening
          ? _value.nomorRekening
          : nomorRekening // ignore: cast_nullable_to_non_nullable
              as String,
      atasNama: null == atasNama
          ? _value.atasNama
          : atasNama // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountImpl implements _BankAccount {
  const _$BankAccountImpl(
      {required this.bank,
      required this.nomorRekening,
      required this.atasNama});

  factory _$BankAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountImplFromJson(json);

  @override
  final String bank;
  @override
  final String nomorRekening;
  @override
  final String atasNama;

  @override
  String toString() {
    return 'BankAccount(bank: $bank, nomorRekening: $nomorRekening, atasNama: $atasNama)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountImpl &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.nomorRekening, nomorRekening) ||
                other.nomorRekening == nomorRekening) &&
            (identical(other.atasNama, atasNama) ||
                other.atasNama == atasNama));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bank, nomorRekening, atasNama);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      __$$BankAccountImplCopyWithImpl<_$BankAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountImplToJson(
      this,
    );
  }
}

abstract class _BankAccount implements BankAccount {
  const factory _BankAccount(
      {required final String bank,
      required final String nomorRekening,
      required final String atasNama}) = _$BankAccountImpl;

  factory _BankAccount.fromJson(Map<String, dynamic> json) =
      _$BankAccountImpl.fromJson;

  @override
  String get bank;
  @override
  String get nomorRekening;
  @override
  String get atasNama;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get namaToko => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get alamat => throw _privateConstructorUsedError;
  String get kota => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get kontak => throw _privateConstructorUsedError;
  String get jamOperasional => throw _privateConstructorUsedError;
  String get statusVerifikasi =>
      throw _privateConstructorUsedError; // 'menunggu' | 'aktif' | 'ditolak' | 'ditangguhkan'
  String? get alasanTolak => throw _privateConstructorUsedError;
  BankAccount get rekening => throw _privateConstructorUsedError;
  int get tarifDendaPerHari => throw _privateConstructorUsedError;
  int get persenDeposit => throw _privateConstructorUsedError;
  String get kebijakanBatal => throw _privateConstructorUsedError;
  List<String> get opsiPengambilan =>
      throw _privateConstructorUsedError; // ['ambil_di_toko', 'diantar']
  int get biayaAntarPerKm => throw _privateConstructorUsedError;
  double get radiusAntarMaxKm => throw _privateConstructorUsedError;
  double get ratingRata => throw _privateConstructorUsedError;
  int get totalReview => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String namaToko,
      String deskripsi,
      String logo,
      String alamat,
      String kota,
      double latitude,
      double longitude,
      String kontak,
      String jamOperasional,
      String statusVerifikasi,
      String? alasanTolak,
      BankAccount rekening,
      int tarifDendaPerHari,
      int persenDeposit,
      String kebijakanBatal,
      List<String> opsiPengambilan,
      int biayaAntarPerKm,
      double radiusAntarMaxKm,
      double ratingRata,
      int totalReview,
      String createdAt});

  $BankAccountCopyWith<$Res> get rekening;
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? namaToko = null,
    Object? deskripsi = null,
    Object? logo = null,
    Object? alamat = null,
    Object? kota = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? kontak = null,
    Object? jamOperasional = null,
    Object? statusVerifikasi = null,
    Object? alasanTolak = freezed,
    Object? rekening = null,
    Object? tarifDendaPerHari = null,
    Object? persenDeposit = null,
    Object? kebijakanBatal = null,
    Object? opsiPengambilan = null,
    Object? biayaAntarPerKm = null,
    Object? radiusAntarMaxKm = null,
    Object? ratingRata = null,
    Object? totalReview = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      namaToko: null == namaToko
          ? _value.namaToko
          : namaToko // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      kota: null == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      kontak: null == kontak
          ? _value.kontak
          : kontak // ignore: cast_nullable_to_non_nullable
              as String,
      jamOperasional: null == jamOperasional
          ? _value.jamOperasional
          : jamOperasional // ignore: cast_nullable_to_non_nullable
              as String,
      statusVerifikasi: null == statusVerifikasi
          ? _value.statusVerifikasi
          : statusVerifikasi // ignore: cast_nullable_to_non_nullable
              as String,
      alasanTolak: freezed == alasanTolak
          ? _value.alasanTolak
          : alasanTolak // ignore: cast_nullable_to_non_nullable
              as String?,
      rekening: null == rekening
          ? _value.rekening
          : rekening // ignore: cast_nullable_to_non_nullable
              as BankAccount,
      tarifDendaPerHari: null == tarifDendaPerHari
          ? _value.tarifDendaPerHari
          : tarifDendaPerHari // ignore: cast_nullable_to_non_nullable
              as int,
      persenDeposit: null == persenDeposit
          ? _value.persenDeposit
          : persenDeposit // ignore: cast_nullable_to_non_nullable
              as int,
      kebijakanBatal: null == kebijakanBatal
          ? _value.kebijakanBatal
          : kebijakanBatal // ignore: cast_nullable_to_non_nullable
              as String,
      opsiPengambilan: null == opsiPengambilan
          ? _value.opsiPengambilan
          : opsiPengambilan // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biayaAntarPerKm: null == biayaAntarPerKm
          ? _value.biayaAntarPerKm
          : biayaAntarPerKm // ignore: cast_nullable_to_non_nullable
              as int,
      radiusAntarMaxKm: null == radiusAntarMaxKm
          ? _value.radiusAntarMaxKm
          : radiusAntarMaxKm // ignore: cast_nullable_to_non_nullable
              as double,
      ratingRata: null == ratingRata
          ? _value.ratingRata
          : ratingRata // ignore: cast_nullable_to_non_nullable
              as double,
      totalReview: null == totalReview
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankAccountCopyWith<$Res> get rekening {
    return $BankAccountCopyWith<$Res>(_value.rekening, (value) {
      return _then(_value.copyWith(rekening: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String namaToko,
      String deskripsi,
      String logo,
      String alamat,
      String kota,
      double latitude,
      double longitude,
      String kontak,
      String jamOperasional,
      String statusVerifikasi,
      String? alasanTolak,
      BankAccount rekening,
      int tarifDendaPerHari,
      int persenDeposit,
      String kebijakanBatal,
      List<String> opsiPengambilan,
      int biayaAntarPerKm,
      double radiusAntarMaxKm,
      double ratingRata,
      int totalReview,
      String createdAt});

  @override
  $BankAccountCopyWith<$Res> get rekening;
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? namaToko = null,
    Object? deskripsi = null,
    Object? logo = null,
    Object? alamat = null,
    Object? kota = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? kontak = null,
    Object? jamOperasional = null,
    Object? statusVerifikasi = null,
    Object? alasanTolak = freezed,
    Object? rekening = null,
    Object? tarifDendaPerHari = null,
    Object? persenDeposit = null,
    Object? kebijakanBatal = null,
    Object? opsiPengambilan = null,
    Object? biayaAntarPerKm = null,
    Object? radiusAntarMaxKm = null,
    Object? ratingRata = null,
    Object? totalReview = null,
    Object? createdAt = null,
  }) {
    return _then(_$VendorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      namaToko: null == namaToko
          ? _value.namaToko
          : namaToko // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      kota: null == kota
          ? _value.kota
          : kota // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      kontak: null == kontak
          ? _value.kontak
          : kontak // ignore: cast_nullable_to_non_nullable
              as String,
      jamOperasional: null == jamOperasional
          ? _value.jamOperasional
          : jamOperasional // ignore: cast_nullable_to_non_nullable
              as String,
      statusVerifikasi: null == statusVerifikasi
          ? _value.statusVerifikasi
          : statusVerifikasi // ignore: cast_nullable_to_non_nullable
              as String,
      alasanTolak: freezed == alasanTolak
          ? _value.alasanTolak
          : alasanTolak // ignore: cast_nullable_to_non_nullable
              as String?,
      rekening: null == rekening
          ? _value.rekening
          : rekening // ignore: cast_nullable_to_non_nullable
              as BankAccount,
      tarifDendaPerHari: null == tarifDendaPerHari
          ? _value.tarifDendaPerHari
          : tarifDendaPerHari // ignore: cast_nullable_to_non_nullable
              as int,
      persenDeposit: null == persenDeposit
          ? _value.persenDeposit
          : persenDeposit // ignore: cast_nullable_to_non_nullable
              as int,
      kebijakanBatal: null == kebijakanBatal
          ? _value.kebijakanBatal
          : kebijakanBatal // ignore: cast_nullable_to_non_nullable
              as String,
      opsiPengambilan: null == opsiPengambilan
          ? _value._opsiPengambilan
          : opsiPengambilan // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biayaAntarPerKm: null == biayaAntarPerKm
          ? _value.biayaAntarPerKm
          : biayaAntarPerKm // ignore: cast_nullable_to_non_nullable
              as int,
      radiusAntarMaxKm: null == radiusAntarMaxKm
          ? _value.radiusAntarMaxKm
          : radiusAntarMaxKm // ignore: cast_nullable_to_non_nullable
              as double,
      ratingRata: null == ratingRata
          ? _value.ratingRata
          : ratingRata // ignore: cast_nullable_to_non_nullable
              as double,
      totalReview: null == totalReview
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {required this.id,
      required this.userId,
      required this.namaToko,
      required this.deskripsi,
      required this.logo,
      required this.alamat,
      required this.kota,
      required this.latitude,
      required this.longitude,
      required this.kontak,
      required this.jamOperasional,
      required this.statusVerifikasi,
      this.alasanTolak,
      required this.rekening,
      required this.tarifDendaPerHari,
      required this.persenDeposit,
      required this.kebijakanBatal,
      required final List<String> opsiPengambilan,
      required this.biayaAntarPerKm,
      required this.radiusAntarMaxKm,
      required this.ratingRata,
      required this.totalReview,
      required this.createdAt})
      : _opsiPengambilan = opsiPengambilan;

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String namaToko;
  @override
  final String deskripsi;
  @override
  final String logo;
  @override
  final String alamat;
  @override
  final String kota;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String kontak;
  @override
  final String jamOperasional;
  @override
  final String statusVerifikasi;
// 'menunggu' | 'aktif' | 'ditolak' | 'ditangguhkan'
  @override
  final String? alasanTolak;
  @override
  final BankAccount rekening;
  @override
  final int tarifDendaPerHari;
  @override
  final int persenDeposit;
  @override
  final String kebijakanBatal;
  final List<String> _opsiPengambilan;
  @override
  List<String> get opsiPengambilan {
    if (_opsiPengambilan is EqualUnmodifiableListView) return _opsiPengambilan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_opsiPengambilan);
  }

// ['ambil_di_toko', 'diantar']
  @override
  final int biayaAntarPerKm;
  @override
  final double radiusAntarMaxKm;
  @override
  final double ratingRata;
  @override
  final int totalReview;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'Vendor(id: $id, userId: $userId, namaToko: $namaToko, deskripsi: $deskripsi, logo: $logo, alamat: $alamat, kota: $kota, latitude: $latitude, longitude: $longitude, kontak: $kontak, jamOperasional: $jamOperasional, statusVerifikasi: $statusVerifikasi, alasanTolak: $alasanTolak, rekening: $rekening, tarifDendaPerHari: $tarifDendaPerHari, persenDeposit: $persenDeposit, kebijakanBatal: $kebijakanBatal, opsiPengambilan: $opsiPengambilan, biayaAntarPerKm: $biayaAntarPerKm, radiusAntarMaxKm: $radiusAntarMaxKm, ratingRata: $ratingRata, totalReview: $totalReview, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.namaToko, namaToko) ||
                other.namaToko == namaToko) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.kota, kota) || other.kota == kota) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.kontak, kontak) || other.kontak == kontak) &&
            (identical(other.jamOperasional, jamOperasional) ||
                other.jamOperasional == jamOperasional) &&
            (identical(other.statusVerifikasi, statusVerifikasi) ||
                other.statusVerifikasi == statusVerifikasi) &&
            (identical(other.alasanTolak, alasanTolak) ||
                other.alasanTolak == alasanTolak) &&
            (identical(other.rekening, rekening) ||
                other.rekening == rekening) &&
            (identical(other.tarifDendaPerHari, tarifDendaPerHari) ||
                other.tarifDendaPerHari == tarifDendaPerHari) &&
            (identical(other.persenDeposit, persenDeposit) ||
                other.persenDeposit == persenDeposit) &&
            (identical(other.kebijakanBatal, kebijakanBatal) ||
                other.kebijakanBatal == kebijakanBatal) &&
            const DeepCollectionEquality()
                .equals(other._opsiPengambilan, _opsiPengambilan) &&
            (identical(other.biayaAntarPerKm, biayaAntarPerKm) ||
                other.biayaAntarPerKm == biayaAntarPerKm) &&
            (identical(other.radiusAntarMaxKm, radiusAntarMaxKm) ||
                other.radiusAntarMaxKm == radiusAntarMaxKm) &&
            (identical(other.ratingRata, ratingRata) ||
                other.ratingRata == ratingRata) &&
            (identical(other.totalReview, totalReview) ||
                other.totalReview == totalReview) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        namaToko,
        deskripsi,
        logo,
        alamat,
        kota,
        latitude,
        longitude,
        kontak,
        jamOperasional,
        statusVerifikasi,
        alasanTolak,
        rekening,
        tarifDendaPerHari,
        persenDeposit,
        kebijakanBatal,
        const DeepCollectionEquality().hash(_opsiPengambilan),
        biayaAntarPerKm,
        radiusAntarMaxKm,
        ratingRata,
        totalReview,
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  const factory _Vendor(
      {required final String id,
      required final String userId,
      required final String namaToko,
      required final String deskripsi,
      required final String logo,
      required final String alamat,
      required final String kota,
      required final double latitude,
      required final double longitude,
      required final String kontak,
      required final String jamOperasional,
      required final String statusVerifikasi,
      final String? alasanTolak,
      required final BankAccount rekening,
      required final int tarifDendaPerHari,
      required final int persenDeposit,
      required final String kebijakanBatal,
      required final List<String> opsiPengambilan,
      required final int biayaAntarPerKm,
      required final double radiusAntarMaxKm,
      required final double ratingRata,
      required final int totalReview,
      required final String createdAt}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get namaToko;
  @override
  String get deskripsi;
  @override
  String get logo;
  @override
  String get alamat;
  @override
  String get kota;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get kontak;
  @override
  String get jamOperasional;
  @override
  String get statusVerifikasi;
  @override // 'menunggu' | 'aktif' | 'ditolak' | 'ditangguhkan'
  String? get alasanTolak;
  @override
  BankAccount get rekening;
  @override
  int get tarifDendaPerHari;
  @override
  int get persenDeposit;
  @override
  String get kebijakanBatal;
  @override
  List<String> get opsiPengambilan;
  @override // ['ambil_di_toko', 'diantar']
  int get biayaAntarPerKm;
  @override
  double get radiusAntarMaxKm;
  @override
  double get ratingRata;
  @override
  int get totalReview;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
