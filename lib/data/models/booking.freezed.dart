// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError; // penyewa
  String get vendorId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  String get tglMulai => throw _privateConstructorUsedError;
  String get tglSelesai => throw _privateConstructorUsedError;
  String get opsiPengambilan =>
      throw _privateConstructorUsedError; // 'ambil_di_toko' | 'diantar'
  Map<String, dynamic>? get alamatAntar => throw _privateConstructorUsedError;
  int? get biayaAntarEstimasi => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'menunggu' | 'dikonfirmasi' | 'ditolak' | 'dibatalkan'
  String? get alasanTolak => throw _privateConstructorUsedError;
  int get totalEstimasi => throw _privateConstructorUsedError;
  int get dpDibayar => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get confirmedAt => throw _privateConstructorUsedError;
  String? get cancelledAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String vendorId,
      String itemId,
      int qty,
      String tglMulai,
      String tglSelesai,
      String opsiPengambilan,
      Map<String, dynamic>? alamatAntar,
      int? biayaAntarEstimasi,
      String status,
      String? alasanTolak,
      int totalEstimasi,
      int dpDibayar,
      String createdAt,
      String? confirmedAt,
      String? cancelledAt});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? vendorId = null,
    Object? itemId = null,
    Object? qty = null,
    Object? tglMulai = null,
    Object? tglSelesai = null,
    Object? opsiPengambilan = null,
    Object? alamatAntar = freezed,
    Object? biayaAntarEstimasi = freezed,
    Object? status = null,
    Object? alasanTolak = freezed,
    Object? totalEstimasi = null,
    Object? dpDibayar = null,
    Object? createdAt = null,
    Object? confirmedAt = freezed,
    Object? cancelledAt = freezed,
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
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      tglMulai: null == tglMulai
          ? _value.tglMulai
          : tglMulai // ignore: cast_nullable_to_non_nullable
              as String,
      tglSelesai: null == tglSelesai
          ? _value.tglSelesai
          : tglSelesai // ignore: cast_nullable_to_non_nullable
              as String,
      opsiPengambilan: null == opsiPengambilan
          ? _value.opsiPengambilan
          : opsiPengambilan // ignore: cast_nullable_to_non_nullable
              as String,
      alamatAntar: freezed == alamatAntar
          ? _value.alamatAntar
          : alamatAntar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      biayaAntarEstimasi: freezed == biayaAntarEstimasi
          ? _value.biayaAntarEstimasi
          : biayaAntarEstimasi // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      alasanTolak: freezed == alasanTolak
          ? _value.alasanTolak
          : alasanTolak // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEstimasi: null == totalEstimasi
          ? _value.totalEstimasi
          : totalEstimasi // ignore: cast_nullable_to_non_nullable
              as int,
      dpDibayar: null == dpDibayar
          ? _value.dpDibayar
          : dpDibayar // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String vendorId,
      String itemId,
      int qty,
      String tglMulai,
      String tglSelesai,
      String opsiPengambilan,
      Map<String, dynamic>? alamatAntar,
      int? biayaAntarEstimasi,
      String status,
      String? alasanTolak,
      int totalEstimasi,
      int dpDibayar,
      String createdAt,
      String? confirmedAt,
      String? cancelledAt});
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? vendorId = null,
    Object? itemId = null,
    Object? qty = null,
    Object? tglMulai = null,
    Object? tglSelesai = null,
    Object? opsiPengambilan = null,
    Object? alamatAntar = freezed,
    Object? biayaAntarEstimasi = freezed,
    Object? status = null,
    Object? alasanTolak = freezed,
    Object? totalEstimasi = null,
    Object? dpDibayar = null,
    Object? createdAt = null,
    Object? confirmedAt = freezed,
    Object? cancelledAt = freezed,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      tglMulai: null == tglMulai
          ? _value.tglMulai
          : tglMulai // ignore: cast_nullable_to_non_nullable
              as String,
      tglSelesai: null == tglSelesai
          ? _value.tglSelesai
          : tglSelesai // ignore: cast_nullable_to_non_nullable
              as String,
      opsiPengambilan: null == opsiPengambilan
          ? _value.opsiPengambilan
          : opsiPengambilan // ignore: cast_nullable_to_non_nullable
              as String,
      alamatAntar: freezed == alamatAntar
          ? _value._alamatAntar
          : alamatAntar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      biayaAntarEstimasi: freezed == biayaAntarEstimasi
          ? _value.biayaAntarEstimasi
          : biayaAntarEstimasi // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      alasanTolak: freezed == alasanTolak
          ? _value.alasanTolak
          : alasanTolak // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEstimasi: null == totalEstimasi
          ? _value.totalEstimasi
          : totalEstimasi // ignore: cast_nullable_to_non_nullable
              as int,
      dpDibayar: null == dpDibayar
          ? _value.dpDibayar
          : dpDibayar // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedAt: freezed == confirmedAt
          ? _value.confirmedAt
          : confirmedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {required this.id,
      required this.userId,
      required this.vendorId,
      required this.itemId,
      required this.qty,
      required this.tglMulai,
      required this.tglSelesai,
      required this.opsiPengambilan,
      final Map<String, dynamic>? alamatAntar,
      this.biayaAntarEstimasi,
      required this.status,
      this.alasanTolak,
      required this.totalEstimasi,
      required this.dpDibayar,
      required this.createdAt,
      this.confirmedAt,
      this.cancelledAt})
      : _alamatAntar = alamatAntar;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
// penyewa
  @override
  final String vendorId;
  @override
  final String itemId;
  @override
  final int qty;
  @override
  final String tglMulai;
  @override
  final String tglSelesai;
  @override
  final String opsiPengambilan;
// 'ambil_di_toko' | 'diantar'
  final Map<String, dynamic>? _alamatAntar;
// 'ambil_di_toko' | 'diantar'
  @override
  Map<String, dynamic>? get alamatAntar {
    final value = _alamatAntar;
    if (value == null) return null;
    if (_alamatAntar is EqualUnmodifiableMapView) return _alamatAntar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? biayaAntarEstimasi;
  @override
  final String status;
// 'menunggu' | 'dikonfirmasi' | 'ditolak' | 'dibatalkan'
  @override
  final String? alasanTolak;
  @override
  final int totalEstimasi;
  @override
  final int dpDibayar;
  @override
  final String createdAt;
  @override
  final String? confirmedAt;
  @override
  final String? cancelledAt;

  @override
  String toString() {
    return 'Booking(id: $id, userId: $userId, vendorId: $vendorId, itemId: $itemId, qty: $qty, tglMulai: $tglMulai, tglSelesai: $tglSelesai, opsiPengambilan: $opsiPengambilan, alamatAntar: $alamatAntar, biayaAntarEstimasi: $biayaAntarEstimasi, status: $status, alasanTolak: $alasanTolak, totalEstimasi: $totalEstimasi, dpDibayar: $dpDibayar, createdAt: $createdAt, confirmedAt: $confirmedAt, cancelledAt: $cancelledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.tglMulai, tglMulai) ||
                other.tglMulai == tglMulai) &&
            (identical(other.tglSelesai, tglSelesai) ||
                other.tglSelesai == tglSelesai) &&
            (identical(other.opsiPengambilan, opsiPengambilan) ||
                other.opsiPengambilan == opsiPengambilan) &&
            const DeepCollectionEquality()
                .equals(other._alamatAntar, _alamatAntar) &&
            (identical(other.biayaAntarEstimasi, biayaAntarEstimasi) ||
                other.biayaAntarEstimasi == biayaAntarEstimasi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.alasanTolak, alasanTolak) ||
                other.alasanTolak == alasanTolak) &&
            (identical(other.totalEstimasi, totalEstimasi) ||
                other.totalEstimasi == totalEstimasi) &&
            (identical(other.dpDibayar, dpDibayar) ||
                other.dpDibayar == dpDibayar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      vendorId,
      itemId,
      qty,
      tglMulai,
      tglSelesai,
      opsiPengambilan,
      const DeepCollectionEquality().hash(_alamatAntar),
      biayaAntarEstimasi,
      status,
      alasanTolak,
      totalEstimasi,
      dpDibayar,
      createdAt,
      confirmedAt,
      cancelledAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {required final String id,
      required final String userId,
      required final String vendorId,
      required final String itemId,
      required final int qty,
      required final String tglMulai,
      required final String tglSelesai,
      required final String opsiPengambilan,
      final Map<String, dynamic>? alamatAntar,
      final int? biayaAntarEstimasi,
      required final String status,
      final String? alasanTolak,
      required final int totalEstimasi,
      required final int dpDibayar,
      required final String createdAt,
      final String? confirmedAt,
      final String? cancelledAt}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override // penyewa
  String get vendorId;
  @override
  String get itemId;
  @override
  int get qty;
  @override
  String get tglMulai;
  @override
  String get tglSelesai;
  @override
  String get opsiPengambilan;
  @override // 'ambil_di_toko' | 'diantar'
  Map<String, dynamic>? get alamatAntar;
  @override
  int? get biayaAntarEstimasi;
  @override
  String get status;
  @override // 'menunggu' | 'dikonfirmasi' | 'ditolak' | 'dibatalkan'
  String? get alasanTolak;
  @override
  int get totalEstimasi;
  @override
  int get dpDibayar;
  @override
  String get createdAt;
  @override
  String? get confirmedAt;
  @override
  String? get cancelledAt;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rental _$RentalFromJson(Map<String, dynamic> json) {
  return _Rental.fromJson(json);
}

/// @nodoc
mixin _$Rental {
  String get id => throw _privateConstructorUsedError;
  String? get bookingId =>
      throw _privateConstructorUsedError; // nullable untuk walk-in
  String get vendorId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError; // penyewa
  String get tglMulai => throw _privateConstructorUsedError;
  String get jatuhTempo => throw _privateConstructorUsedError;
  String? get tglKembaliAktual => throw _privateConstructorUsedError;
  int get totalBiayaSewa => throw _privateConstructorUsedError;
  int get diskon => throw _privateConstructorUsedError;
  int get dendaTelat => throw _privateConstructorUsedError;
  int get biayaGantiRugi => throw _privateConstructorUsedError;
  int get deposit => throw _privateConstructorUsedError;
  int get biayaAntar => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'aktif' | 'selesai' | 'dibatalkan' | 'sengketa'
  String get createdAt => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentalCopyWith<Rental> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalCopyWith<$Res> {
  factory $RentalCopyWith(Rental value, $Res Function(Rental) then) =
      _$RentalCopyWithImpl<$Res, Rental>;
  @useResult
  $Res call(
      {String id,
      String? bookingId,
      String vendorId,
      String userId,
      String tglMulai,
      String jatuhTempo,
      String? tglKembaliAktual,
      int totalBiayaSewa,
      int diskon,
      int dendaTelat,
      int biayaGantiRugi,
      int deposit,
      int biayaAntar,
      String status,
      String createdAt,
      String? completedAt});
}

/// @nodoc
class _$RentalCopyWithImpl<$Res, $Val extends Rental>
    implements $RentalCopyWith<$Res> {
  _$RentalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = freezed,
    Object? vendorId = null,
    Object? userId = null,
    Object? tglMulai = null,
    Object? jatuhTempo = null,
    Object? tglKembaliAktual = freezed,
    Object? totalBiayaSewa = null,
    Object? diskon = null,
    Object? dendaTelat = null,
    Object? biayaGantiRugi = null,
    Object? deposit = null,
    Object? biayaAntar = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tglMulai: null == tglMulai
          ? _value.tglMulai
          : tglMulai // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTempo: null == jatuhTempo
          ? _value.jatuhTempo
          : jatuhTempo // ignore: cast_nullable_to_non_nullable
              as String,
      tglKembaliAktual: freezed == tglKembaliAktual
          ? _value.tglKembaliAktual
          : tglKembaliAktual // ignore: cast_nullable_to_non_nullable
              as String?,
      totalBiayaSewa: null == totalBiayaSewa
          ? _value.totalBiayaSewa
          : totalBiayaSewa // ignore: cast_nullable_to_non_nullable
              as int,
      diskon: null == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int,
      dendaTelat: null == dendaTelat
          ? _value.dendaTelat
          : dendaTelat // ignore: cast_nullable_to_non_nullable
              as int,
      biayaGantiRugi: null == biayaGantiRugi
          ? _value.biayaGantiRugi
          : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
              as int,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as int,
      biayaAntar: null == biayaAntar
          ? _value.biayaAntar
          : biayaAntar // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalImplCopyWith<$Res> implements $RentalCopyWith<$Res> {
  factory _$$RentalImplCopyWith(
          _$RentalImpl value, $Res Function(_$RentalImpl) then) =
      __$$RentalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? bookingId,
      String vendorId,
      String userId,
      String tglMulai,
      String jatuhTempo,
      String? tglKembaliAktual,
      int totalBiayaSewa,
      int diskon,
      int dendaTelat,
      int biayaGantiRugi,
      int deposit,
      int biayaAntar,
      String status,
      String createdAt,
      String? completedAt});
}

/// @nodoc
class __$$RentalImplCopyWithImpl<$Res>
    extends _$RentalCopyWithImpl<$Res, _$RentalImpl>
    implements _$$RentalImplCopyWith<$Res> {
  __$$RentalImplCopyWithImpl(
      _$RentalImpl _value, $Res Function(_$RentalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = freezed,
    Object? vendorId = null,
    Object? userId = null,
    Object? tglMulai = null,
    Object? jatuhTempo = null,
    Object? tglKembaliAktual = freezed,
    Object? totalBiayaSewa = null,
    Object? diskon = null,
    Object? dendaTelat = null,
    Object? biayaGantiRugi = null,
    Object? deposit = null,
    Object? biayaAntar = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$RentalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tglMulai: null == tglMulai
          ? _value.tglMulai
          : tglMulai // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTempo: null == jatuhTempo
          ? _value.jatuhTempo
          : jatuhTempo // ignore: cast_nullable_to_non_nullable
              as String,
      tglKembaliAktual: freezed == tglKembaliAktual
          ? _value.tglKembaliAktual
          : tglKembaliAktual // ignore: cast_nullable_to_non_nullable
              as String?,
      totalBiayaSewa: null == totalBiayaSewa
          ? _value.totalBiayaSewa
          : totalBiayaSewa // ignore: cast_nullable_to_non_nullable
              as int,
      diskon: null == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int,
      dendaTelat: null == dendaTelat
          ? _value.dendaTelat
          : dendaTelat // ignore: cast_nullable_to_non_nullable
              as int,
      biayaGantiRugi: null == biayaGantiRugi
          ? _value.biayaGantiRugi
          : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
              as int,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as int,
      biayaAntar: null == biayaAntar
          ? _value.biayaAntar
          : biayaAntar // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentalImpl implements _Rental {
  const _$RentalImpl(
      {required this.id,
      this.bookingId,
      required this.vendorId,
      required this.userId,
      required this.tglMulai,
      required this.jatuhTempo,
      this.tglKembaliAktual,
      required this.totalBiayaSewa,
      required this.diskon,
      required this.dendaTelat,
      required this.biayaGantiRugi,
      required this.deposit,
      required this.biayaAntar,
      required this.status,
      required this.createdAt,
      this.completedAt});

  factory _$RentalImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentalImplFromJson(json);

  @override
  final String id;
  @override
  final String? bookingId;
// nullable untuk walk-in
  @override
  final String vendorId;
  @override
  final String userId;
// penyewa
  @override
  final String tglMulai;
  @override
  final String jatuhTempo;
  @override
  final String? tglKembaliAktual;
  @override
  final int totalBiayaSewa;
  @override
  final int diskon;
  @override
  final int dendaTelat;
  @override
  final int biayaGantiRugi;
  @override
  final int deposit;
  @override
  final int biayaAntar;
  @override
  final String status;
// 'aktif' | 'selesai' | 'dibatalkan' | 'sengketa'
  @override
  final String createdAt;
  @override
  final String? completedAt;

  @override
  String toString() {
    return 'Rental(id: $id, bookingId: $bookingId, vendorId: $vendorId, userId: $userId, tglMulai: $tglMulai, jatuhTempo: $jatuhTempo, tglKembaliAktual: $tglKembaliAktual, totalBiayaSewa: $totalBiayaSewa, diskon: $diskon, dendaTelat: $dendaTelat, biayaGantiRugi: $biayaGantiRugi, deposit: $deposit, biayaAntar: $biayaAntar, status: $status, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tglMulai, tglMulai) ||
                other.tglMulai == tglMulai) &&
            (identical(other.jatuhTempo, jatuhTempo) ||
                other.jatuhTempo == jatuhTempo) &&
            (identical(other.tglKembaliAktual, tglKembaliAktual) ||
                other.tglKembaliAktual == tglKembaliAktual) &&
            (identical(other.totalBiayaSewa, totalBiayaSewa) ||
                other.totalBiayaSewa == totalBiayaSewa) &&
            (identical(other.diskon, diskon) || other.diskon == diskon) &&
            (identical(other.dendaTelat, dendaTelat) ||
                other.dendaTelat == dendaTelat) &&
            (identical(other.biayaGantiRugi, biayaGantiRugi) ||
                other.biayaGantiRugi == biayaGantiRugi) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.biayaAntar, biayaAntar) ||
                other.biayaAntar == biayaAntar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookingId,
      vendorId,
      userId,
      tglMulai,
      jatuhTempo,
      tglKembaliAktual,
      totalBiayaSewa,
      diskon,
      dendaTelat,
      biayaGantiRugi,
      deposit,
      biayaAntar,
      status,
      createdAt,
      completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalImplCopyWith<_$RentalImpl> get copyWith =>
      __$$RentalImplCopyWithImpl<_$RentalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentalImplToJson(
      this,
    );
  }
}

abstract class _Rental implements Rental {
  const factory _Rental(
      {required final String id,
      final String? bookingId,
      required final String vendorId,
      required final String userId,
      required final String tglMulai,
      required final String jatuhTempo,
      final String? tglKembaliAktual,
      required final int totalBiayaSewa,
      required final int diskon,
      required final int dendaTelat,
      required final int biayaGantiRugi,
      required final int deposit,
      required final int biayaAntar,
      required final String status,
      required final String createdAt,
      final String? completedAt}) = _$RentalImpl;

  factory _Rental.fromJson(Map<String, dynamic> json) = _$RentalImpl.fromJson;

  @override
  String get id;
  @override
  String? get bookingId;
  @override // nullable untuk walk-in
  String get vendorId;
  @override
  String get userId;
  @override // penyewa
  String get tglMulai;
  @override
  String get jatuhTempo;
  @override
  String? get tglKembaliAktual;
  @override
  int get totalBiayaSewa;
  @override
  int get diskon;
  @override
  int get dendaTelat;
  @override
  int get biayaGantiRugi;
  @override
  int get deposit;
  @override
  int get biayaAntar;
  @override
  String get status;
  @override // 'aktif' | 'selesai' | 'dibatalkan' | 'sengketa'
  String get createdAt;
  @override
  String? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$RentalImplCopyWith<_$RentalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RentalItem _$RentalItemFromJson(Map<String, dynamic> json) {
  return _RentalItem.fromJson(json);
}

/// @nodoc
mixin _$RentalItem {
  String get id => throw _privateConstructorUsedError;
  String get rentalId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get hargaSatuan => throw _privateConstructorUsedError;
  Map<String, dynamic>? get kondisiKeluar => throw _privateConstructorUsedError;
  List<String>? get fotoKondisiKeluar => throw _privateConstructorUsedError;
  Map<String, dynamic>? get kondisiKembali =>
      throw _privateConstructorUsedError;
  List<String>? get fotoKondisiKembali => throw _privateConstructorUsedError;
  int get biayaGantiRugi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentalItemCopyWith<RentalItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalItemCopyWith<$Res> {
  factory $RentalItemCopyWith(
          RentalItem value, $Res Function(RentalItem) then) =
      _$RentalItemCopyWithImpl<$Res, RentalItem>;
  @useResult
  $Res call(
      {String id,
      String rentalId,
      String itemId,
      int qty,
      int hargaSatuan,
      Map<String, dynamic>? kondisiKeluar,
      List<String>? fotoKondisiKeluar,
      Map<String, dynamic>? kondisiKembali,
      List<String>? fotoKondisiKembali,
      int biayaGantiRugi});
}

/// @nodoc
class _$RentalItemCopyWithImpl<$Res, $Val extends RentalItem>
    implements $RentalItemCopyWith<$Res> {
  _$RentalItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? itemId = null,
    Object? qty = null,
    Object? hargaSatuan = null,
    Object? kondisiKeluar = freezed,
    Object? fotoKondisiKeluar = freezed,
    Object? kondisiKembali = freezed,
    Object? fotoKondisiKembali = freezed,
    Object? biayaGantiRugi = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      hargaSatuan: null == hargaSatuan
          ? _value.hargaSatuan
          : hargaSatuan // ignore: cast_nullable_to_non_nullable
              as int,
      kondisiKeluar: freezed == kondisiKeluar
          ? _value.kondisiKeluar
          : kondisiKeluar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fotoKondisiKeluar: freezed == fotoKondisiKeluar
          ? _value.fotoKondisiKeluar
          : fotoKondisiKeluar // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      kondisiKembali: freezed == kondisiKembali
          ? _value.kondisiKembali
          : kondisiKembali // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fotoKondisiKembali: freezed == fotoKondisiKembali
          ? _value.fotoKondisiKembali
          : fotoKondisiKembali // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      biayaGantiRugi: null == biayaGantiRugi
          ? _value.biayaGantiRugi
          : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalItemImplCopyWith<$Res>
    implements $RentalItemCopyWith<$Res> {
  factory _$$RentalItemImplCopyWith(
          _$RentalItemImpl value, $Res Function(_$RentalItemImpl) then) =
      __$$RentalItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rentalId,
      String itemId,
      int qty,
      int hargaSatuan,
      Map<String, dynamic>? kondisiKeluar,
      List<String>? fotoKondisiKeluar,
      Map<String, dynamic>? kondisiKembali,
      List<String>? fotoKondisiKembali,
      int biayaGantiRugi});
}

/// @nodoc
class __$$RentalItemImplCopyWithImpl<$Res>
    extends _$RentalItemCopyWithImpl<$Res, _$RentalItemImpl>
    implements _$$RentalItemImplCopyWith<$Res> {
  __$$RentalItemImplCopyWithImpl(
      _$RentalItemImpl _value, $Res Function(_$RentalItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? itemId = null,
    Object? qty = null,
    Object? hargaSatuan = null,
    Object? kondisiKeluar = freezed,
    Object? fotoKondisiKeluar = freezed,
    Object? kondisiKembali = freezed,
    Object? fotoKondisiKembali = freezed,
    Object? biayaGantiRugi = null,
  }) {
    return _then(_$RentalItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      hargaSatuan: null == hargaSatuan
          ? _value.hargaSatuan
          : hargaSatuan // ignore: cast_nullable_to_non_nullable
              as int,
      kondisiKeluar: freezed == kondisiKeluar
          ? _value._kondisiKeluar
          : kondisiKeluar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fotoKondisiKeluar: freezed == fotoKondisiKeluar
          ? _value._fotoKondisiKeluar
          : fotoKondisiKeluar // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      kondisiKembali: freezed == kondisiKembali
          ? _value._kondisiKembali
          : kondisiKembali // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fotoKondisiKembali: freezed == fotoKondisiKembali
          ? _value._fotoKondisiKembali
          : fotoKondisiKembali // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      biayaGantiRugi: null == biayaGantiRugi
          ? _value.biayaGantiRugi
          : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentalItemImpl implements _RentalItem {
  const _$RentalItemImpl(
      {required this.id,
      required this.rentalId,
      required this.itemId,
      required this.qty,
      required this.hargaSatuan,
      final Map<String, dynamic>? kondisiKeluar,
      final List<String>? fotoKondisiKeluar,
      final Map<String, dynamic>? kondisiKembali,
      final List<String>? fotoKondisiKembali,
      required this.biayaGantiRugi})
      : _kondisiKeluar = kondisiKeluar,
        _fotoKondisiKeluar = fotoKondisiKeluar,
        _kondisiKembali = kondisiKembali,
        _fotoKondisiKembali = fotoKondisiKembali;

  factory _$RentalItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentalItemImplFromJson(json);

  @override
  final String id;
  @override
  final String rentalId;
  @override
  final String itemId;
  @override
  final int qty;
  @override
  final int hargaSatuan;
  final Map<String, dynamic>? _kondisiKeluar;
  @override
  Map<String, dynamic>? get kondisiKeluar {
    final value = _kondisiKeluar;
    if (value == null) return null;
    if (_kondisiKeluar is EqualUnmodifiableMapView) return _kondisiKeluar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _fotoKondisiKeluar;
  @override
  List<String>? get fotoKondisiKeluar {
    final value = _fotoKondisiKeluar;
    if (value == null) return null;
    if (_fotoKondisiKeluar is EqualUnmodifiableListView)
      return _fotoKondisiKeluar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _kondisiKembali;
  @override
  Map<String, dynamic>? get kondisiKembali {
    final value = _kondisiKembali;
    if (value == null) return null;
    if (_kondisiKembali is EqualUnmodifiableMapView) return _kondisiKembali;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _fotoKondisiKembali;
  @override
  List<String>? get fotoKondisiKembali {
    final value = _fotoKondisiKembali;
    if (value == null) return null;
    if (_fotoKondisiKembali is EqualUnmodifiableListView)
      return _fotoKondisiKembali;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int biayaGantiRugi;

  @override
  String toString() {
    return 'RentalItem(id: $id, rentalId: $rentalId, itemId: $itemId, qty: $qty, hargaSatuan: $hargaSatuan, kondisiKeluar: $kondisiKeluar, fotoKondisiKeluar: $fotoKondisiKeluar, kondisiKembali: $kondisiKembali, fotoKondisiKembali: $fotoKondisiKembali, biayaGantiRugi: $biayaGantiRugi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rentalId, rentalId) ||
                other.rentalId == rentalId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.hargaSatuan, hargaSatuan) ||
                other.hargaSatuan == hargaSatuan) &&
            const DeepCollectionEquality()
                .equals(other._kondisiKeluar, _kondisiKeluar) &&
            const DeepCollectionEquality()
                .equals(other._fotoKondisiKeluar, _fotoKondisiKeluar) &&
            const DeepCollectionEquality()
                .equals(other._kondisiKembali, _kondisiKembali) &&
            const DeepCollectionEquality()
                .equals(other._fotoKondisiKembali, _fotoKondisiKembali) &&
            (identical(other.biayaGantiRugi, biayaGantiRugi) ||
                other.biayaGantiRugi == biayaGantiRugi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rentalId,
      itemId,
      qty,
      hargaSatuan,
      const DeepCollectionEquality().hash(_kondisiKeluar),
      const DeepCollectionEquality().hash(_fotoKondisiKeluar),
      const DeepCollectionEquality().hash(_kondisiKembali),
      const DeepCollectionEquality().hash(_fotoKondisiKembali),
      biayaGantiRugi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalItemImplCopyWith<_$RentalItemImpl> get copyWith =>
      __$$RentalItemImplCopyWithImpl<_$RentalItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentalItemImplToJson(
      this,
    );
  }
}

abstract class _RentalItem implements RentalItem {
  const factory _RentalItem(
      {required final String id,
      required final String rentalId,
      required final String itemId,
      required final int qty,
      required final int hargaSatuan,
      final Map<String, dynamic>? kondisiKeluar,
      final List<String>? fotoKondisiKeluar,
      final Map<String, dynamic>? kondisiKembali,
      final List<String>? fotoKondisiKembali,
      required final int biayaGantiRugi}) = _$RentalItemImpl;

  factory _RentalItem.fromJson(Map<String, dynamic> json) =
      _$RentalItemImpl.fromJson;

  @override
  String get id;
  @override
  String get rentalId;
  @override
  String get itemId;
  @override
  int get qty;
  @override
  int get hargaSatuan;
  @override
  Map<String, dynamic>? get kondisiKeluar;
  @override
  List<String>? get fotoKondisiKeluar;
  @override
  Map<String, dynamic>? get kondisiKembali;
  @override
  List<String>? get fotoKondisiKembali;
  @override
  int get biayaGantiRugi;
  @override
  @JsonKey(ignore: true)
  _$$RentalItemImplCopyWith<_$RentalItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get id => throw _privateConstructorUsedError;
  String get rentalId => throw _privateConstructorUsedError;
  int get jumlah => throw _privateConstructorUsedError;
  String get jenis =>
      throw _privateConstructorUsedError; // 'dp' | 'pelunasan' | 'denda' | 'deposit_kembali' | 'biaya_antar'
  String get metode =>
      throw _privateConstructorUsedError; // 'transfer' | 'tunai'
  String? get buktiPath => throw _privateConstructorUsedError;
  String get statusVerifikasi =>
      throw _privateConstructorUsedError; // 'pending' | 'verified' | 'rejected'
  String? get verifiedBy => throw _privateConstructorUsedError;
  String? get verifiedAt => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String id,
      String rentalId,
      int jumlah,
      String jenis,
      String metode,
      String? buktiPath,
      String statusVerifikasi,
      String? verifiedBy,
      String? verifiedAt,
      String createdAt});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? jumlah = null,
    Object? jenis = null,
    Object? metode = null,
    Object? buktiPath = freezed,
    Object? statusVerifikasi = null,
    Object? verifiedBy = freezed,
    Object? verifiedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      metode: null == metode
          ? _value.metode
          : metode // ignore: cast_nullable_to_non_nullable
              as String,
      buktiPath: freezed == buktiPath
          ? _value.buktiPath
          : buktiPath // ignore: cast_nullable_to_non_nullable
              as String?,
      statusVerifikasi: null == statusVerifikasi
          ? _value.statusVerifikasi
          : statusVerifikasi // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rentalId,
      int jumlah,
      String jenis,
      String metode,
      String? buktiPath,
      String statusVerifikasi,
      String? verifiedBy,
      String? verifiedAt,
      String createdAt});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? jumlah = null,
    Object? jenis = null,
    Object? metode = null,
    Object? buktiPath = freezed,
    Object? statusVerifikasi = null,
    Object? verifiedBy = freezed,
    Object? verifiedAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      jumlah: null == jumlah
          ? _value.jumlah
          : jumlah // ignore: cast_nullable_to_non_nullable
              as int,
      jenis: null == jenis
          ? _value.jenis
          : jenis // ignore: cast_nullable_to_non_nullable
              as String,
      metode: null == metode
          ? _value.metode
          : metode // ignore: cast_nullable_to_non_nullable
              as String,
      buktiPath: freezed == buktiPath
          ? _value.buktiPath
          : buktiPath // ignore: cast_nullable_to_non_nullable
              as String?,
      statusVerifikasi: null == statusVerifikasi
          ? _value.statusVerifikasi
          : statusVerifikasi // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedBy: freezed == verifiedBy
          ? _value.verifiedBy
          : verifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {required this.id,
      required this.rentalId,
      required this.jumlah,
      required this.jenis,
      required this.metode,
      this.buktiPath,
      required this.statusVerifikasi,
      this.verifiedBy,
      this.verifiedAt,
      required this.createdAt});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String id;
  @override
  final String rentalId;
  @override
  final int jumlah;
  @override
  final String jenis;
// 'dp' | 'pelunasan' | 'denda' | 'deposit_kembali' | 'biaya_antar'
  @override
  final String metode;
// 'transfer' | 'tunai'
  @override
  final String? buktiPath;
  @override
  final String statusVerifikasi;
// 'pending' | 'verified' | 'rejected'
  @override
  final String? verifiedBy;
  @override
  final String? verifiedAt;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'Payment(id: $id, rentalId: $rentalId, jumlah: $jumlah, jenis: $jenis, metode: $metode, buktiPath: $buktiPath, statusVerifikasi: $statusVerifikasi, verifiedBy: $verifiedBy, verifiedAt: $verifiedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rentalId, rentalId) ||
                other.rentalId == rentalId) &&
            (identical(other.jumlah, jumlah) || other.jumlah == jumlah) &&
            (identical(other.jenis, jenis) || other.jenis == jenis) &&
            (identical(other.metode, metode) || other.metode == metode) &&
            (identical(other.buktiPath, buktiPath) ||
                other.buktiPath == buktiPath) &&
            (identical(other.statusVerifikasi, statusVerifikasi) ||
                other.statusVerifikasi == statusVerifikasi) &&
            (identical(other.verifiedBy, verifiedBy) ||
                other.verifiedBy == verifiedBy) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rentalId, jumlah, jenis,
      metode, buktiPath, statusVerifikasi, verifiedBy, verifiedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final String id,
      required final String rentalId,
      required final int jumlah,
      required final String jenis,
      required final String metode,
      final String? buktiPath,
      required final String statusVerifikasi,
      final String? verifiedBy,
      final String? verifiedAt,
      required final String createdAt}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String get id;
  @override
  String get rentalId;
  @override
  int get jumlah;
  @override
  String get jenis;
  @override // 'dp' | 'pelunasan' | 'denda' | 'deposit_kembali' | 'biaya_antar'
  String get metode;
  @override // 'transfer' | 'tunai'
  String? get buktiPath;
  @override
  String get statusVerifikasi;
  @override // 'pending' | 'verified' | 'rejected'
  String? get verifiedBy;
  @override
  String? get verifiedAt;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extension _$ExtensionFromJson(Map<String, dynamic> json) {
  return _Extension.fromJson(json);
}

/// @nodoc
mixin _$Extension {
  String get id => throw _privateConstructorUsedError;
  String get rentalId => throw _privateConstructorUsedError;
  String get jatuhTempoBaru => throw _privateConstructorUsedError;
  int get biayaTambahan => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending' | 'approved' | 'rejected'
  String get createdAt => throw _privateConstructorUsedError;
  String? get decidedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtensionCopyWith<Extension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionCopyWith<$Res> {
  factory $ExtensionCopyWith(Extension value, $Res Function(Extension) then) =
      _$ExtensionCopyWithImpl<$Res, Extension>;
  @useResult
  $Res call(
      {String id,
      String rentalId,
      String jatuhTempoBaru,
      int biayaTambahan,
      String status,
      String createdAt,
      String? decidedAt});
}

/// @nodoc
class _$ExtensionCopyWithImpl<$Res, $Val extends Extension>
    implements $ExtensionCopyWith<$Res> {
  _$ExtensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? jatuhTempoBaru = null,
    Object? biayaTambahan = null,
    Object? status = null,
    Object? createdAt = null,
    Object? decidedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTempoBaru: null == jatuhTempoBaru
          ? _value.jatuhTempoBaru
          : jatuhTempoBaru // ignore: cast_nullable_to_non_nullable
              as String,
      biayaTambahan: null == biayaTambahan
          ? _value.biayaTambahan
          : biayaTambahan // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      decidedAt: freezed == decidedAt
          ? _value.decidedAt
          : decidedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtensionImplCopyWith<$Res>
    implements $ExtensionCopyWith<$Res> {
  factory _$$ExtensionImplCopyWith(
          _$ExtensionImpl value, $Res Function(_$ExtensionImpl) then) =
      __$$ExtensionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String rentalId,
      String jatuhTempoBaru,
      int biayaTambahan,
      String status,
      String createdAt,
      String? decidedAt});
}

/// @nodoc
class __$$ExtensionImplCopyWithImpl<$Res>
    extends _$ExtensionCopyWithImpl<$Res, _$ExtensionImpl>
    implements _$$ExtensionImplCopyWith<$Res> {
  __$$ExtensionImplCopyWithImpl(
      _$ExtensionImpl _value, $Res Function(_$ExtensionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rentalId = null,
    Object? jatuhTempoBaru = null,
    Object? biayaTambahan = null,
    Object? status = null,
    Object? createdAt = null,
    Object? decidedAt = freezed,
  }) {
    return _then(_$ExtensionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTempoBaru: null == jatuhTempoBaru
          ? _value.jatuhTempoBaru
          : jatuhTempoBaru // ignore: cast_nullable_to_non_nullable
              as String,
      biayaTambahan: null == biayaTambahan
          ? _value.biayaTambahan
          : biayaTambahan // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      decidedAt: freezed == decidedAt
          ? _value.decidedAt
          : decidedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtensionImpl implements _Extension {
  const _$ExtensionImpl(
      {required this.id,
      required this.rentalId,
      required this.jatuhTempoBaru,
      required this.biayaTambahan,
      required this.status,
      required this.createdAt,
      this.decidedAt});

  factory _$ExtensionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionImplFromJson(json);

  @override
  final String id;
  @override
  final String rentalId;
  @override
  final String jatuhTempoBaru;
  @override
  final int biayaTambahan;
  @override
  final String status;
// 'pending' | 'approved' | 'rejected'
  @override
  final String createdAt;
  @override
  final String? decidedAt;

  @override
  String toString() {
    return 'Extension(id: $id, rentalId: $rentalId, jatuhTempoBaru: $jatuhTempoBaru, biayaTambahan: $biayaTambahan, status: $status, createdAt: $createdAt, decidedAt: $decidedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rentalId, rentalId) ||
                other.rentalId == rentalId) &&
            (identical(other.jatuhTempoBaru, jatuhTempoBaru) ||
                other.jatuhTempoBaru == jatuhTempoBaru) &&
            (identical(other.biayaTambahan, biayaTambahan) ||
                other.biayaTambahan == biayaTambahan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.decidedAt, decidedAt) ||
                other.decidedAt == decidedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rentalId, jatuhTempoBaru,
      biayaTambahan, status, createdAt, decidedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionImplCopyWith<_$ExtensionImpl> get copyWith =>
      __$$ExtensionImplCopyWithImpl<_$ExtensionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionImplToJson(
      this,
    );
  }
}

abstract class _Extension implements Extension {
  const factory _Extension(
      {required final String id,
      required final String rentalId,
      required final String jatuhTempoBaru,
      required final int biayaTambahan,
      required final String status,
      required final String createdAt,
      final String? decidedAt}) = _$ExtensionImpl;

  factory _Extension.fromJson(Map<String, dynamic> json) =
      _$ExtensionImpl.fromJson;

  @override
  String get id;
  @override
  String get rentalId;
  @override
  String get jatuhTempoBaru;
  @override
  int get biayaTambahan;
  @override
  String get status;
  @override // 'pending' | 'approved' | 'rejected'
  String get createdAt;
  @override
  String? get decidedAt;
  @override
  @JsonKey(ignore: true)
  _$$ExtensionImplCopyWith<_$ExtensionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
