// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Booking {

 String get id; String get userId; String get vendorId; String get itemId; int get qty; String get tglMulai; String get tglSelesai; String get opsiPengambilan; Map<String, dynamic>? get alamatAntar; int? get biayaAntarEstimasi; String get status; String? get alasanTolak; int get totalEstimasi; int get dpDibayar; String get createdAt; String? get confirmedAt; String? get cancelledAt;
/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingCopyWith<Booking> get copyWith => _$BookingCopyWithImpl<Booking>(this as Booking, _$identity);

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Booking;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Booking&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.qty, _this.qty) || other.qty == _this.qty)&&(identical(other.tglMulai, _this.tglMulai) || other.tglMulai == _this.tglMulai)&&(identical(other.tglSelesai, _this.tglSelesai) || other.tglSelesai == _this.tglSelesai)&&(identical(other.opsiPengambilan, _this.opsiPengambilan) || other.opsiPengambilan == _this.opsiPengambilan)&&const DeepCollectionEquality().equals(other.alamatAntar, _this.alamatAntar)&&(identical(other.biayaAntarEstimasi, _this.biayaAntarEstimasi) || other.biayaAntarEstimasi == _this.biayaAntarEstimasi)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.alasanTolak, _this.alasanTolak) || other.alasanTolak == _this.alasanTolak)&&(identical(other.totalEstimasi, _this.totalEstimasi) || other.totalEstimasi == _this.totalEstimasi)&&(identical(other.dpDibayar, _this.dpDibayar) || other.dpDibayar == _this.dpDibayar)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.confirmedAt, _this.confirmedAt) || other.confirmedAt == _this.confirmedAt)&&(identical(other.cancelledAt, _this.cancelledAt) || other.cancelledAt == _this.cancelledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Booking;
  return Object.hash(runtimeType,_this.id,_this.userId,_this.vendorId,_this.itemId,_this.qty,_this.tglMulai,_this.tglSelesai,_this.opsiPengambilan,const DeepCollectionEquality().hash(_this.alamatAntar),_this.biayaAntarEstimasi,_this.status,_this.alasanTolak,_this.totalEstimasi,_this.dpDibayar,_this.createdAt,_this.confirmedAt,_this.cancelledAt);
}

@override
String toString() {
  final _this = this as Booking;
  return 'Booking(id: ${_this.id}, userId: ${_this.userId}, vendorId: ${_this.vendorId}, itemId: ${_this.itemId}, qty: ${_this.qty}, tglMulai: ${_this.tglMulai}, tglSelesai: ${_this.tglSelesai}, opsiPengambilan: ${_this.opsiPengambilan}, alamatAntar: ${_this.alamatAntar}, biayaAntarEstimasi: ${_this.biayaAntarEstimasi}, status: ${_this.status}, alasanTolak: ${_this.alasanTolak}, totalEstimasi: ${_this.totalEstimasi}, dpDibayar: ${_this.dpDibayar}, createdAt: ${_this.createdAt}, confirmedAt: ${_this.confirmedAt}, cancelledAt: ${_this.cancelledAt})';
}


}

/// @nodoc
abstract mixin class $BookingCopyWith<$Res>  {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) _then) = _$BookingCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String vendorId, String itemId, int qty, String tglMulai, String tglSelesai, String opsiPengambilan, Map<String, dynamic>? alamatAntar, int? biayaAntarEstimasi, String status, String? alasanTolak, int totalEstimasi, int dpDibayar, String createdAt, String? confirmedAt, String? cancelledAt
});




}
/// @nodoc
class _$BookingCopyWithImpl<$Res>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._self, this._then);

  final Booking _self;
  final $Res Function(Booking) _then;

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? vendorId = null,Object? itemId = null,Object? qty = null,Object? tglMulai = null,Object? tglSelesai = null,Object? opsiPengambilan = null,Object? alamatAntar = freezed,Object? biayaAntarEstimasi = freezed,Object? status = null,Object? alasanTolak = freezed,Object? totalEstimasi = null,Object? dpDibayar = null,Object? createdAt = null,Object? confirmedAt = freezed,Object? cancelledAt = freezed,}) {
  return _then(Booking(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,tglSelesai: null == tglSelesai ? _self.tglSelesai : tglSelesai // ignore: cast_nullable_to_non_nullable
as String,opsiPengambilan: null == opsiPengambilan ? _self.opsiPengambilan : opsiPengambilan // ignore: cast_nullable_to_non_nullable
as String,alamatAntar: freezed == alamatAntar ? _self.alamatAntar : alamatAntar // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,biayaAntarEstimasi: freezed == biayaAntarEstimasi ? _self.biayaAntarEstimasi : biayaAntarEstimasi // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,alasanTolak: freezed == alasanTolak ? _self.alasanTolak : alasanTolak // ignore: cast_nullable_to_non_nullable
as String?,totalEstimasi: null == totalEstimasi ? _self.totalEstimasi : totalEstimasi // ignore: cast_nullable_to_non_nullable
as int,dpDibayar: null == dpDibayar ? _self.dpDibayar : dpDibayar // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Booking].
extension BookingPatterns on Booking {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Booking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Booking value)  $default,){
final _that = this;
switch (_that) {
case _Booking():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Booking value)?  $default,){
final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String vendorId,  String itemId,  int qty,  String tglMulai,  String tglSelesai,  String opsiPengambilan,  Map<String, dynamic>? alamatAntar,  int? biayaAntarEstimasi,  String status,  String? alasanTolak,  int totalEstimasi,  int dpDibayar,  String createdAt,  String? confirmedAt,  String? cancelledAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that.id,_that.userId,_that.vendorId,_that.itemId,_that.qty,_that.tglMulai,_that.tglSelesai,_that.opsiPengambilan,_that.alamatAntar,_that.biayaAntarEstimasi,_that.status,_that.alasanTolak,_that.totalEstimasi,_that.dpDibayar,_that.createdAt,_that.confirmedAt,_that.cancelledAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String vendorId,  String itemId,  int qty,  String tglMulai,  String tglSelesai,  String opsiPengambilan,  Map<String, dynamic>? alamatAntar,  int? biayaAntarEstimasi,  String status,  String? alasanTolak,  int totalEstimasi,  int dpDibayar,  String createdAt,  String? confirmedAt,  String? cancelledAt)  $default,) {final _that = this;
switch (_that) {
case _Booking():
return $default(_that.id,_that.userId,_that.vendorId,_that.itemId,_that.qty,_that.tglMulai,_that.tglSelesai,_that.opsiPengambilan,_that.alamatAntar,_that.biayaAntarEstimasi,_that.status,_that.alasanTolak,_that.totalEstimasi,_that.dpDibayar,_that.createdAt,_that.confirmedAt,_that.cancelledAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String vendorId,  String itemId,  int qty,  String tglMulai,  String tglSelesai,  String opsiPengambilan,  Map<String, dynamic>? alamatAntar,  int? biayaAntarEstimasi,  String status,  String? alasanTolak,  int totalEstimasi,  int dpDibayar,  String createdAt,  String? confirmedAt,  String? cancelledAt)?  $default,) {final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that.id,_that.userId,_that.vendorId,_that.itemId,_that.qty,_that.tglMulai,_that.tglSelesai,_that.opsiPengambilan,_that.alamatAntar,_that.biayaAntarEstimasi,_that.status,_that.alasanTolak,_that.totalEstimasi,_that.dpDibayar,_that.createdAt,_that.confirmedAt,_that.cancelledAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Booking implements Booking {
  const _Booking({required this.id, required this.userId, required this.vendorId, required this.itemId, required this.qty, required this.tglMulai, required this.tglSelesai, required this.opsiPengambilan,  Map<String, dynamic>? alamatAntar, this.biayaAntarEstimasi, required this.status, this.alasanTolak, required this.totalEstimasi, required this.dpDibayar, required this.createdAt, this.confirmedAt, this.cancelledAt}): _alamatAntar = alamatAntar;
  factory _Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String vendorId;
@override final  String itemId;
@override final  int qty;
@override final  String tglMulai;
@override final  String tglSelesai;
@override final  String opsiPengambilan;
 final  Map<String, dynamic>? _alamatAntar;
@override Map<String, dynamic>? get alamatAntar {
  final value = _alamatAntar;
  if (value == null) return null;
  if (_alamatAntar is EqualUnmodifiableMapView) return _alamatAntar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? biayaAntarEstimasi;
@override final  String status;
@override final  String? alasanTolak;
@override final  int totalEstimasi;
@override final  int dpDibayar;
@override final  String createdAt;
@override final  String? confirmedAt;
@override final  String? cancelledAt;

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingCopyWith<_Booking> get copyWith => __$BookingCopyWithImpl<_Booking>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Booking&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.tglMulai, tglMulai) || other.tglMulai == tglMulai)&&(identical(other.tglSelesai, tglSelesai) || other.tglSelesai == tglSelesai)&&(identical(other.opsiPengambilan, opsiPengambilan) || other.opsiPengambilan == opsiPengambilan)&&const DeepCollectionEquality().equals(other.alamatAntar, _alamatAntar)&&(identical(other.biayaAntarEstimasi, biayaAntarEstimasi) || other.biayaAntarEstimasi == biayaAntarEstimasi)&&(identical(other.status, status) || other.status == status)&&(identical(other.alasanTolak, alasanTolak) || other.alasanTolak == alasanTolak)&&(identical(other.totalEstimasi, totalEstimasi) || other.totalEstimasi == totalEstimasi)&&(identical(other.dpDibayar, dpDibayar) || other.dpDibayar == dpDibayar)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,userId,vendorId,itemId,qty,tglMulai,tglSelesai,opsiPengambilan,const DeepCollectionEquality().hash(_alamatAntar),biayaAntarEstimasi,status,alasanTolak,totalEstimasi,dpDibayar,createdAt,confirmedAt,cancelledAt);
}

@override
String toString() {
    return 'Booking(id: $id, userId: $userId, vendorId: $vendorId, itemId: $itemId, qty: $qty, tglMulai: $tglMulai, tglSelesai: $tglSelesai, opsiPengambilan: $opsiPengambilan, alamatAntar: $alamatAntar, biayaAntarEstimasi: $biayaAntarEstimasi, status: $status, alasanTolak: $alasanTolak, totalEstimasi: $totalEstimasi, dpDibayar: $dpDibayar, createdAt: $createdAt, confirmedAt: $confirmedAt, cancelledAt: $cancelledAt)';
}


}

/// @nodoc
abstract mixin class _$BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$BookingCopyWith(_Booking value, $Res Function(_Booking) _then) = __$BookingCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String vendorId, String itemId, int qty, String tglMulai, String tglSelesai, String opsiPengambilan, Map<String, dynamic>? alamatAntar, int? biayaAntarEstimasi, String status, String? alasanTolak, int totalEstimasi, int dpDibayar, String createdAt, String? confirmedAt, String? cancelledAt
});




}
/// @nodoc
class __$BookingCopyWithImpl<$Res>
    implements _$BookingCopyWith<$Res> {
  __$BookingCopyWithImpl(this._self, this._then);

  final _Booking _self;
  final $Res Function(_Booking) _then;

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? vendorId = null,Object? itemId = null,Object? qty = null,Object? tglMulai = null,Object? tglSelesai = null,Object? opsiPengambilan = null,Object? alamatAntar = freezed,Object? biayaAntarEstimasi = freezed,Object? status = null,Object? alasanTolak = freezed,Object? totalEstimasi = null,Object? dpDibayar = null,Object? createdAt = null,Object? confirmedAt = freezed,Object? cancelledAt = freezed,}) {
  return _then(_Booking(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,tglSelesai: null == tglSelesai ? _self.tglSelesai : tglSelesai // ignore: cast_nullable_to_non_nullable
as String,opsiPengambilan: null == opsiPengambilan ? _self.opsiPengambilan : opsiPengambilan // ignore: cast_nullable_to_non_nullable
as String,alamatAntar: freezed == alamatAntar ? _self._alamatAntar : alamatAntar // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,biayaAntarEstimasi: freezed == biayaAntarEstimasi ? _self.biayaAntarEstimasi : biayaAntarEstimasi // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,alasanTolak: freezed == alasanTolak ? _self.alasanTolak : alasanTolak // ignore: cast_nullable_to_non_nullable
as String?,totalEstimasi: null == totalEstimasi ? _self.totalEstimasi : totalEstimasi // ignore: cast_nullable_to_non_nullable
as int,dpDibayar: null == dpDibayar ? _self.dpDibayar : dpDibayar // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Rental {

 String get id; String? get bookingId; String get vendorId; String get userId; String get tglMulai; String get jatuhTempo; String? get tglKembaliAktual; int get totalBiayaSewa; int get diskon; int get dendaTelat; int get biayaGantiRugi; int get deposit; int get biayaAntar; String get status; String get createdAt; String? get completedAt;
/// Create a copy of Rental
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalCopyWith<Rental> get copyWith => _$RentalCopyWithImpl<Rental>(this as Rental, _$identity);

  /// Serializes this Rental to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Rental;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rental&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.bookingId, _this.bookingId) || other.bookingId == _this.bookingId)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.tglMulai, _this.tglMulai) || other.tglMulai == _this.tglMulai)&&(identical(other.jatuhTempo, _this.jatuhTempo) || other.jatuhTempo == _this.jatuhTempo)&&(identical(other.tglKembaliAktual, _this.tglKembaliAktual) || other.tglKembaliAktual == _this.tglKembaliAktual)&&(identical(other.totalBiayaSewa, _this.totalBiayaSewa) || other.totalBiayaSewa == _this.totalBiayaSewa)&&(identical(other.diskon, _this.diskon) || other.diskon == _this.diskon)&&(identical(other.dendaTelat, _this.dendaTelat) || other.dendaTelat == _this.dendaTelat)&&(identical(other.biayaGantiRugi, _this.biayaGantiRugi) || other.biayaGantiRugi == _this.biayaGantiRugi)&&(identical(other.deposit, _this.deposit) || other.deposit == _this.deposit)&&(identical(other.biayaAntar, _this.biayaAntar) || other.biayaAntar == _this.biayaAntar)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.completedAt, _this.completedAt) || other.completedAt == _this.completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Rental;
  return Object.hash(runtimeType,_this.id,_this.bookingId,_this.vendorId,_this.userId,_this.tglMulai,_this.jatuhTempo,_this.tglKembaliAktual,_this.totalBiayaSewa,_this.diskon,_this.dendaTelat,_this.biayaGantiRugi,_this.deposit,_this.biayaAntar,_this.status,_this.createdAt,_this.completedAt);
}

@override
String toString() {
  final _this = this as Rental;
  return 'Rental(id: ${_this.id}, bookingId: ${_this.bookingId}, vendorId: ${_this.vendorId}, userId: ${_this.userId}, tglMulai: ${_this.tglMulai}, jatuhTempo: ${_this.jatuhTempo}, tglKembaliAktual: ${_this.tglKembaliAktual}, totalBiayaSewa: ${_this.totalBiayaSewa}, diskon: ${_this.diskon}, dendaTelat: ${_this.dendaTelat}, biayaGantiRugi: ${_this.biayaGantiRugi}, deposit: ${_this.deposit}, biayaAntar: ${_this.biayaAntar}, status: ${_this.status}, createdAt: ${_this.createdAt}, completedAt: ${_this.completedAt})';
}


}

/// @nodoc
abstract mixin class $RentalCopyWith<$Res>  {
  factory $RentalCopyWith(Rental value, $Res Function(Rental) _then) = _$RentalCopyWithImpl;
@useResult
$Res call({
 String id, String? bookingId, String vendorId, String userId, String tglMulai, String jatuhTempo, String? tglKembaliAktual, int totalBiayaSewa, int diskon, int dendaTelat, int biayaGantiRugi, int deposit, int biayaAntar, String status, String createdAt, String? completedAt
});




}
/// @nodoc
class _$RentalCopyWithImpl<$Res>
    implements $RentalCopyWith<$Res> {
  _$RentalCopyWithImpl(this._self, this._then);

  final Rental _self;
  final $Res Function(Rental) _then;

/// Create a copy of Rental
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bookingId = freezed,Object? vendorId = null,Object? userId = null,Object? tglMulai = null,Object? jatuhTempo = null,Object? tglKembaliAktual = freezed,Object? totalBiayaSewa = null,Object? diskon = null,Object? dendaTelat = null,Object? biayaGantiRugi = null,Object? deposit = null,Object? biayaAntar = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(Rental(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,jatuhTempo: null == jatuhTempo ? _self.jatuhTempo : jatuhTempo // ignore: cast_nullable_to_non_nullable
as String,tglKembaliAktual: freezed == tglKembaliAktual ? _self.tglKembaliAktual : tglKembaliAktual // ignore: cast_nullable_to_non_nullable
as String?,totalBiayaSewa: null == totalBiayaSewa ? _self.totalBiayaSewa : totalBiayaSewa // ignore: cast_nullable_to_non_nullable
as int,diskon: null == diskon ? _self.diskon : diskon // ignore: cast_nullable_to_non_nullable
as int,dendaTelat: null == dendaTelat ? _self.dendaTelat : dendaTelat // ignore: cast_nullable_to_non_nullable
as int,biayaGantiRugi: null == biayaGantiRugi ? _self.biayaGantiRugi : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,biayaAntar: null == biayaAntar ? _self.biayaAntar : biayaAntar // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rental].
extension RentalPatterns on Rental {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rental value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rental() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rental value)  $default,){
final _that = this;
switch (_that) {
case _Rental():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rental value)?  $default,){
final _that = this;
switch (_that) {
case _Rental() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? bookingId,  String vendorId,  String userId,  String tglMulai,  String jatuhTempo,  String? tglKembaliAktual,  int totalBiayaSewa,  int diskon,  int dendaTelat,  int biayaGantiRugi,  int deposit,  int biayaAntar,  String status,  String createdAt,  String? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rental() when $default != null:
return $default(_that.id,_that.bookingId,_that.vendorId,_that.userId,_that.tglMulai,_that.jatuhTempo,_that.tglKembaliAktual,_that.totalBiayaSewa,_that.diskon,_that.dendaTelat,_that.biayaGantiRugi,_that.deposit,_that.biayaAntar,_that.status,_that.createdAt,_that.completedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? bookingId,  String vendorId,  String userId,  String tglMulai,  String jatuhTempo,  String? tglKembaliAktual,  int totalBiayaSewa,  int diskon,  int dendaTelat,  int biayaGantiRugi,  int deposit,  int biayaAntar,  String status,  String createdAt,  String? completedAt)  $default,) {final _that = this;
switch (_that) {
case _Rental():
return $default(_that.id,_that.bookingId,_that.vendorId,_that.userId,_that.tglMulai,_that.jatuhTempo,_that.tglKembaliAktual,_that.totalBiayaSewa,_that.diskon,_that.dendaTelat,_that.biayaGantiRugi,_that.deposit,_that.biayaAntar,_that.status,_that.createdAt,_that.completedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? bookingId,  String vendorId,  String userId,  String tglMulai,  String jatuhTempo,  String? tglKembaliAktual,  int totalBiayaSewa,  int diskon,  int dendaTelat,  int biayaGantiRugi,  int deposit,  int biayaAntar,  String status,  String createdAt,  String? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _Rental() when $default != null:
return $default(_that.id,_that.bookingId,_that.vendorId,_that.userId,_that.tglMulai,_that.jatuhTempo,_that.tglKembaliAktual,_that.totalBiayaSewa,_that.diskon,_that.dendaTelat,_that.biayaGantiRugi,_that.deposit,_that.biayaAntar,_that.status,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rental implements Rental {
  const _Rental({required this.id, this.bookingId, required this.vendorId, required this.userId, required this.tglMulai, required this.jatuhTempo, this.tglKembaliAktual, required this.totalBiayaSewa, required this.diskon, required this.dendaTelat, required this.biayaGantiRugi, required this.deposit, required this.biayaAntar, required this.status, required this.createdAt, this.completedAt});
  factory _Rental.fromJson(Map<String, dynamic> json) => _$RentalFromJson(json);

@override final  String id;
@override final  String? bookingId;
@override final  String vendorId;
@override final  String userId;
@override final  String tglMulai;
@override final  String jatuhTempo;
@override final  String? tglKembaliAktual;
@override final  int totalBiayaSewa;
@override final  int diskon;
@override final  int dendaTelat;
@override final  int biayaGantiRugi;
@override final  int deposit;
@override final  int biayaAntar;
@override final  String status;
@override final  String createdAt;
@override final  String? completedAt;

/// Create a copy of Rental
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalCopyWith<_Rental> get copyWith => __$RentalCopyWithImpl<_Rental>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rental&&(identical(other.id, id) || other.id == id)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.tglMulai, tglMulai) || other.tglMulai == tglMulai)&&(identical(other.jatuhTempo, jatuhTempo) || other.jatuhTempo == jatuhTempo)&&(identical(other.tglKembaliAktual, tglKembaliAktual) || other.tglKembaliAktual == tglKembaliAktual)&&(identical(other.totalBiayaSewa, totalBiayaSewa) || other.totalBiayaSewa == totalBiayaSewa)&&(identical(other.diskon, diskon) || other.diskon == diskon)&&(identical(other.dendaTelat, dendaTelat) || other.dendaTelat == dendaTelat)&&(identical(other.biayaGantiRugi, biayaGantiRugi) || other.biayaGantiRugi == biayaGantiRugi)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.biayaAntar, biayaAntar) || other.biayaAntar == biayaAntar)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,bookingId,vendorId,userId,tglMulai,jatuhTempo,tglKembaliAktual,totalBiayaSewa,diskon,dendaTelat,biayaGantiRugi,deposit,biayaAntar,status,createdAt,completedAt);
}

@override
String toString() {
    return 'Rental(id: $id, bookingId: $bookingId, vendorId: $vendorId, userId: $userId, tglMulai: $tglMulai, jatuhTempo: $jatuhTempo, tglKembaliAktual: $tglKembaliAktual, totalBiayaSewa: $totalBiayaSewa, diskon: $diskon, dendaTelat: $dendaTelat, biayaGantiRugi: $biayaGantiRugi, deposit: $deposit, biayaAntar: $biayaAntar, status: $status, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$RentalCopyWith<$Res> implements $RentalCopyWith<$Res> {
  factory _$RentalCopyWith(_Rental value, $Res Function(_Rental) _then) = __$RentalCopyWithImpl;
@override @useResult
$Res call({
 String id, String? bookingId, String vendorId, String userId, String tglMulai, String jatuhTempo, String? tglKembaliAktual, int totalBiayaSewa, int diskon, int dendaTelat, int biayaGantiRugi, int deposit, int biayaAntar, String status, String createdAt, String? completedAt
});




}
/// @nodoc
class __$RentalCopyWithImpl<$Res>
    implements _$RentalCopyWith<$Res> {
  __$RentalCopyWithImpl(this._self, this._then);

  final _Rental _self;
  final $Res Function(_Rental) _then;

/// Create a copy of Rental
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bookingId = freezed,Object? vendorId = null,Object? userId = null,Object? tglMulai = null,Object? jatuhTempo = null,Object? tglKembaliAktual = freezed,Object? totalBiayaSewa = null,Object? diskon = null,Object? dendaTelat = null,Object? biayaGantiRugi = null,Object? deposit = null,Object? biayaAntar = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_Rental(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,jatuhTempo: null == jatuhTempo ? _self.jatuhTempo : jatuhTempo // ignore: cast_nullable_to_non_nullable
as String,tglKembaliAktual: freezed == tglKembaliAktual ? _self.tglKembaliAktual : tglKembaliAktual // ignore: cast_nullable_to_non_nullable
as String?,totalBiayaSewa: null == totalBiayaSewa ? _self.totalBiayaSewa : totalBiayaSewa // ignore: cast_nullable_to_non_nullable
as int,diskon: null == diskon ? _self.diskon : diskon // ignore: cast_nullable_to_non_nullable
as int,dendaTelat: null == dendaTelat ? _self.dendaTelat : dendaTelat // ignore: cast_nullable_to_non_nullable
as int,biayaGantiRugi: null == biayaGantiRugi ? _self.biayaGantiRugi : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
as int,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as int,biayaAntar: null == biayaAntar ? _self.biayaAntar : biayaAntar // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RentalItem {

 String get id; String get rentalId; String get itemId; int get qty; int get hargaSatuan; Map<String, dynamic>? get kondisiKeluar; List<String>? get fotoKondisiKeluar; Map<String, dynamic>? get kondisiKembali; List<String>? get fotoKondisiKembali; int get biayaGantiRugi;
/// Create a copy of RentalItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalItemCopyWith<RentalItem> get copyWith => _$RentalItemCopyWithImpl<RentalItem>(this as RentalItem, _$identity);

  /// Serializes this RentalItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RentalItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentalItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.qty, _this.qty) || other.qty == _this.qty)&&(identical(other.hargaSatuan, _this.hargaSatuan) || other.hargaSatuan == _this.hargaSatuan)&&const DeepCollectionEquality().equals(other.kondisiKeluar, _this.kondisiKeluar)&&const DeepCollectionEquality().equals(other.fotoKondisiKeluar, _this.fotoKondisiKeluar)&&const DeepCollectionEquality().equals(other.kondisiKembali, _this.kondisiKembali)&&const DeepCollectionEquality().equals(other.fotoKondisiKembali, _this.fotoKondisiKembali)&&(identical(other.biayaGantiRugi, _this.biayaGantiRugi) || other.biayaGantiRugi == _this.biayaGantiRugi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RentalItem;
  return Object.hash(runtimeType,_this.id,_this.rentalId,_this.itemId,_this.qty,_this.hargaSatuan,const DeepCollectionEquality().hash(_this.kondisiKeluar),const DeepCollectionEquality().hash(_this.fotoKondisiKeluar),const DeepCollectionEquality().hash(_this.kondisiKembali),const DeepCollectionEquality().hash(_this.fotoKondisiKembali),_this.biayaGantiRugi);
}

@override
String toString() {
  final _this = this as RentalItem;
  return 'RentalItem(id: ${_this.id}, rentalId: ${_this.rentalId}, itemId: ${_this.itemId}, qty: ${_this.qty}, hargaSatuan: ${_this.hargaSatuan}, kondisiKeluar: ${_this.kondisiKeluar}, fotoKondisiKeluar: ${_this.fotoKondisiKeluar}, kondisiKembali: ${_this.kondisiKembali}, fotoKondisiKembali: ${_this.fotoKondisiKembali}, biayaGantiRugi: ${_this.biayaGantiRugi})';
}


}

/// @nodoc
abstract mixin class $RentalItemCopyWith<$Res>  {
  factory $RentalItemCopyWith(RentalItem value, $Res Function(RentalItem) _then) = _$RentalItemCopyWithImpl;
@useResult
$Res call({
 String id, String rentalId, String itemId, int qty, int hargaSatuan, Map<String, dynamic>? kondisiKeluar, List<String>? fotoKondisiKeluar, Map<String, dynamic>? kondisiKembali, List<String>? fotoKondisiKembali, int biayaGantiRugi
});




}
/// @nodoc
class _$RentalItemCopyWithImpl<$Res>
    implements $RentalItemCopyWith<$Res> {
  _$RentalItemCopyWithImpl(this._self, this._then);

  final RentalItem _self;
  final $Res Function(RentalItem) _then;

/// Create a copy of RentalItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rentalId = null,Object? itemId = null,Object? qty = null,Object? hargaSatuan = null,Object? kondisiKeluar = freezed,Object? fotoKondisiKeluar = freezed,Object? kondisiKembali = freezed,Object? fotoKondisiKembali = freezed,Object? biayaGantiRugi = null,}) {
  return _then(RentalItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,hargaSatuan: null == hargaSatuan ? _self.hargaSatuan : hargaSatuan // ignore: cast_nullable_to_non_nullable
as int,kondisiKeluar: freezed == kondisiKeluar ? _self.kondisiKeluar : kondisiKeluar // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,fotoKondisiKeluar: freezed == fotoKondisiKeluar ? _self.fotoKondisiKeluar : fotoKondisiKeluar // ignore: cast_nullable_to_non_nullable
as List<String>?,kondisiKembali: freezed == kondisiKembali ? _self.kondisiKembali : kondisiKembali // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,fotoKondisiKembali: freezed == fotoKondisiKembali ? _self.fotoKondisiKembali : fotoKondisiKembali // ignore: cast_nullable_to_non_nullable
as List<String>?,biayaGantiRugi: null == biayaGantiRugi ? _self.biayaGantiRugi : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RentalItem].
extension RentalItemPatterns on RentalItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RentalItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RentalItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RentalItem value)  $default,){
final _that = this;
switch (_that) {
case _RentalItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RentalItem value)?  $default,){
final _that = this;
switch (_that) {
case _RentalItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rentalId,  String itemId,  int qty,  int hargaSatuan,  Map<String, dynamic>? kondisiKeluar,  List<String>? fotoKondisiKeluar,  Map<String, dynamic>? kondisiKembali,  List<String>? fotoKondisiKembali,  int biayaGantiRugi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RentalItem() when $default != null:
return $default(_that.id,_that.rentalId,_that.itemId,_that.qty,_that.hargaSatuan,_that.kondisiKeluar,_that.fotoKondisiKeluar,_that.kondisiKembali,_that.fotoKondisiKembali,_that.biayaGantiRugi);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rentalId,  String itemId,  int qty,  int hargaSatuan,  Map<String, dynamic>? kondisiKeluar,  List<String>? fotoKondisiKeluar,  Map<String, dynamic>? kondisiKembali,  List<String>? fotoKondisiKembali,  int biayaGantiRugi)  $default,) {final _that = this;
switch (_that) {
case _RentalItem():
return $default(_that.id,_that.rentalId,_that.itemId,_that.qty,_that.hargaSatuan,_that.kondisiKeluar,_that.fotoKondisiKeluar,_that.kondisiKembali,_that.fotoKondisiKembali,_that.biayaGantiRugi);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rentalId,  String itemId,  int qty,  int hargaSatuan,  Map<String, dynamic>? kondisiKeluar,  List<String>? fotoKondisiKeluar,  Map<String, dynamic>? kondisiKembali,  List<String>? fotoKondisiKembali,  int biayaGantiRugi)?  $default,) {final _that = this;
switch (_that) {
case _RentalItem() when $default != null:
return $default(_that.id,_that.rentalId,_that.itemId,_that.qty,_that.hargaSatuan,_that.kondisiKeluar,_that.fotoKondisiKeluar,_that.kondisiKembali,_that.fotoKondisiKembali,_that.biayaGantiRugi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RentalItem implements RentalItem {
  const _RentalItem({required this.id, required this.rentalId, required this.itemId, required this.qty, required this.hargaSatuan,  Map<String, dynamic>? kondisiKeluar,  List<String>? fotoKondisiKeluar,  Map<String, dynamic>? kondisiKembali,  List<String>? fotoKondisiKembali, required this.biayaGantiRugi}): _kondisiKeluar = kondisiKeluar,_fotoKondisiKeluar = fotoKondisiKeluar,_kondisiKembali = kondisiKembali,_fotoKondisiKembali = fotoKondisiKembali;
  factory _RentalItem.fromJson(Map<String, dynamic> json) => _$RentalItemFromJson(json);

@override final  String id;
@override final  String rentalId;
@override final  String itemId;
@override final  int qty;
@override final  int hargaSatuan;
 final  Map<String, dynamic>? _kondisiKeluar;
@override Map<String, dynamic>? get kondisiKeluar {
  final value = _kondisiKeluar;
  if (value == null) return null;
  if (_kondisiKeluar is EqualUnmodifiableMapView) return _kondisiKeluar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _fotoKondisiKeluar;
@override List<String>? get fotoKondisiKeluar {
  final value = _fotoKondisiKeluar;
  if (value == null) return null;
  if (_fotoKondisiKeluar is EqualUnmodifiableListView) return _fotoKondisiKeluar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _kondisiKembali;
@override Map<String, dynamic>? get kondisiKembali {
  final value = _kondisiKembali;
  if (value == null) return null;
  if (_kondisiKembali is EqualUnmodifiableMapView) return _kondisiKembali;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _fotoKondisiKembali;
@override List<String>? get fotoKondisiKembali {
  final value = _fotoKondisiKembali;
  if (value == null) return null;
  if (_fotoKondisiKembali is EqualUnmodifiableListView) return _fotoKondisiKembali;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int biayaGantiRugi;

/// Create a copy of RentalItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalItemCopyWith<_RentalItem> get copyWith => __$RentalItemCopyWithImpl<_RentalItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentalItem&&(identical(other.id, id) || other.id == id)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.hargaSatuan, hargaSatuan) || other.hargaSatuan == hargaSatuan)&&const DeepCollectionEquality().equals(other.kondisiKeluar, _kondisiKeluar)&&const DeepCollectionEquality().equals(other.fotoKondisiKeluar, _fotoKondisiKeluar)&&const DeepCollectionEquality().equals(other.kondisiKembali, _kondisiKembali)&&const DeepCollectionEquality().equals(other.fotoKondisiKembali, _fotoKondisiKembali)&&(identical(other.biayaGantiRugi, biayaGantiRugi) || other.biayaGantiRugi == biayaGantiRugi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rentalId,itemId,qty,hargaSatuan,const DeepCollectionEquality().hash(_kondisiKeluar),const DeepCollectionEquality().hash(_fotoKondisiKeluar),const DeepCollectionEquality().hash(_kondisiKembali),const DeepCollectionEquality().hash(_fotoKondisiKembali),biayaGantiRugi);
}

@override
String toString() {
    return 'RentalItem(id: $id, rentalId: $rentalId, itemId: $itemId, qty: $qty, hargaSatuan: $hargaSatuan, kondisiKeluar: $kondisiKeluar, fotoKondisiKeluar: $fotoKondisiKeluar, kondisiKembali: $kondisiKembali, fotoKondisiKembali: $fotoKondisiKembali, biayaGantiRugi: $biayaGantiRugi)';
}


}

/// @nodoc
abstract mixin class _$RentalItemCopyWith<$Res> implements $RentalItemCopyWith<$Res> {
  factory _$RentalItemCopyWith(_RentalItem value, $Res Function(_RentalItem) _then) = __$RentalItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String rentalId, String itemId, int qty, int hargaSatuan, Map<String, dynamic>? kondisiKeluar, List<String>? fotoKondisiKeluar, Map<String, dynamic>? kondisiKembali, List<String>? fotoKondisiKembali, int biayaGantiRugi
});




}
/// @nodoc
class __$RentalItemCopyWithImpl<$Res>
    implements _$RentalItemCopyWith<$Res> {
  __$RentalItemCopyWithImpl(this._self, this._then);

  final _RentalItem _self;
  final $Res Function(_RentalItem) _then;

/// Create a copy of RentalItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rentalId = null,Object? itemId = null,Object? qty = null,Object? hargaSatuan = null,Object? kondisiKeluar = freezed,Object? fotoKondisiKeluar = freezed,Object? kondisiKembali = freezed,Object? fotoKondisiKembali = freezed,Object? biayaGantiRugi = null,}) {
  return _then(_RentalItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,hargaSatuan: null == hargaSatuan ? _self.hargaSatuan : hargaSatuan // ignore: cast_nullable_to_non_nullable
as int,kondisiKeluar: freezed == kondisiKeluar ? _self._kondisiKeluar : kondisiKeluar // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,fotoKondisiKeluar: freezed == fotoKondisiKeluar ? _self._fotoKondisiKeluar : fotoKondisiKeluar // ignore: cast_nullable_to_non_nullable
as List<String>?,kondisiKembali: freezed == kondisiKembali ? _self._kondisiKembali : kondisiKembali // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,fotoKondisiKembali: freezed == fotoKondisiKembali ? _self._fotoKondisiKembali : fotoKondisiKembali // ignore: cast_nullable_to_non_nullable
as List<String>?,biayaGantiRugi: null == biayaGantiRugi ? _self.biayaGantiRugi : biayaGantiRugi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Payment {

 String get id; String get rentalId; int get jumlah; String get jenis; String get metode; String? get buktiPath; String get statusVerifikasi; String? get verifiedBy; String? get verifiedAt; String get createdAt;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Payment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.jumlah, _this.jumlah) || other.jumlah == _this.jumlah)&&(identical(other.jenis, _this.jenis) || other.jenis == _this.jenis)&&(identical(other.metode, _this.metode) || other.metode == _this.metode)&&(identical(other.buktiPath, _this.buktiPath) || other.buktiPath == _this.buktiPath)&&(identical(other.statusVerifikasi, _this.statusVerifikasi) || other.statusVerifikasi == _this.statusVerifikasi)&&(identical(other.verifiedBy, _this.verifiedBy) || other.verifiedBy == _this.verifiedBy)&&(identical(other.verifiedAt, _this.verifiedAt) || other.verifiedAt == _this.verifiedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Payment;
  return Object.hash(runtimeType,_this.id,_this.rentalId,_this.jumlah,_this.jenis,_this.metode,_this.buktiPath,_this.statusVerifikasi,_this.verifiedBy,_this.verifiedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as Payment;
  return 'Payment(id: ${_this.id}, rentalId: ${_this.rentalId}, jumlah: ${_this.jumlah}, jenis: ${_this.jenis}, metode: ${_this.metode}, buktiPath: ${_this.buktiPath}, statusVerifikasi: ${_this.statusVerifikasi}, verifiedBy: ${_this.verifiedBy}, verifiedAt: ${_this.verifiedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 String id, String rentalId, int jumlah, String jenis, String metode, String? buktiPath, String statusVerifikasi, String? verifiedBy, String? verifiedAt, String createdAt
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rentalId = null,Object? jumlah = null,Object? jenis = null,Object? metode = null,Object? buktiPath = freezed,Object? statusVerifikasi = null,Object? verifiedBy = freezed,Object? verifiedAt = freezed,Object? createdAt = null,}) {
  return _then(Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,jumlah: null == jumlah ? _self.jumlah : jumlah // ignore: cast_nullable_to_non_nullable
as int,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,metode: null == metode ? _self.metode : metode // ignore: cast_nullable_to_non_nullable
as String,buktiPath: freezed == buktiPath ? _self.buktiPath : buktiPath // ignore: cast_nullable_to_non_nullable
as String?,statusVerifikasi: null == statusVerifikasi ? _self.statusVerifikasi : statusVerifikasi // ignore: cast_nullable_to_non_nullable
as String,verifiedBy: freezed == verifiedBy ? _self.verifiedBy : verifiedBy // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rentalId,  int jumlah,  String jenis,  String metode,  String? buktiPath,  String statusVerifikasi,  String? verifiedBy,  String? verifiedAt,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.rentalId,_that.jumlah,_that.jenis,_that.metode,_that.buktiPath,_that.statusVerifikasi,_that.verifiedBy,_that.verifiedAt,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rentalId,  int jumlah,  String jenis,  String metode,  String? buktiPath,  String statusVerifikasi,  String? verifiedBy,  String? verifiedAt,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.rentalId,_that.jumlah,_that.jenis,_that.metode,_that.buktiPath,_that.statusVerifikasi,_that.verifiedBy,_that.verifiedAt,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rentalId,  int jumlah,  String jenis,  String metode,  String? buktiPath,  String statusVerifikasi,  String? verifiedBy,  String? verifiedAt,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.rentalId,_that.jumlah,_that.jenis,_that.metode,_that.buktiPath,_that.statusVerifikasi,_that.verifiedBy,_that.verifiedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payment implements Payment {
  const _Payment({required this.id, required this.rentalId, required this.jumlah, required this.jenis, required this.metode, this.buktiPath, required this.statusVerifikasi, this.verifiedBy, this.verifiedAt, required this.createdAt});
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  String id;
@override final  String rentalId;
@override final  int jumlah;
@override final  String jenis;
@override final  String metode;
@override final  String? buktiPath;
@override final  String statusVerifikasi;
@override final  String? verifiedBy;
@override final  String? verifiedAt;
@override final  String createdAt;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.jumlah, jumlah) || other.jumlah == jumlah)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.metode, metode) || other.metode == metode)&&(identical(other.buktiPath, buktiPath) || other.buktiPath == buktiPath)&&(identical(other.statusVerifikasi, statusVerifikasi) || other.statusVerifikasi == statusVerifikasi)&&(identical(other.verifiedBy, verifiedBy) || other.verifiedBy == verifiedBy)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rentalId,jumlah,jenis,metode,buktiPath,statusVerifikasi,verifiedBy,verifiedAt,createdAt);
}

@override
String toString() {
    return 'Payment(id: $id, rentalId: $rentalId, jumlah: $jumlah, jenis: $jenis, metode: $metode, buktiPath: $buktiPath, statusVerifikasi: $statusVerifikasi, verifiedBy: $verifiedBy, verifiedAt: $verifiedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 String id, String rentalId, int jumlah, String jenis, String metode, String? buktiPath, String statusVerifikasi, String? verifiedBy, String? verifiedAt, String createdAt
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rentalId = null,Object? jumlah = null,Object? jenis = null,Object? metode = null,Object? buktiPath = freezed,Object? statusVerifikasi = null,Object? verifiedBy = freezed,Object? verifiedAt = freezed,Object? createdAt = null,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,jumlah: null == jumlah ? _self.jumlah : jumlah // ignore: cast_nullable_to_non_nullable
as int,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,metode: null == metode ? _self.metode : metode // ignore: cast_nullable_to_non_nullable
as String,buktiPath: freezed == buktiPath ? _self.buktiPath : buktiPath // ignore: cast_nullable_to_non_nullable
as String?,statusVerifikasi: null == statusVerifikasi ? _self.statusVerifikasi : statusVerifikasi // ignore: cast_nullable_to_non_nullable
as String,verifiedBy: freezed == verifiedBy ? _self.verifiedBy : verifiedBy // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Extension {

 String get id; String get rentalId; String get jatuhTempoBaru; int get biayaTambahan; String get status; String get createdAt; String? get decidedAt;
/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionCopyWith<Extension> get copyWith => _$ExtensionCopyWithImpl<Extension>(this as Extension, _$identity);

  /// Serializes this Extension to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Extension;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extension&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.jatuhTempoBaru, _this.jatuhTempoBaru) || other.jatuhTempoBaru == _this.jatuhTempoBaru)&&(identical(other.biayaTambahan, _this.biayaTambahan) || other.biayaTambahan == _this.biayaTambahan)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.decidedAt, _this.decidedAt) || other.decidedAt == _this.decidedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Extension;
  return Object.hash(runtimeType,_this.id,_this.rentalId,_this.jatuhTempoBaru,_this.biayaTambahan,_this.status,_this.createdAt,_this.decidedAt);
}

@override
String toString() {
  final _this = this as Extension;
  return 'Extension(id: ${_this.id}, rentalId: ${_this.rentalId}, jatuhTempoBaru: ${_this.jatuhTempoBaru}, biayaTambahan: ${_this.biayaTambahan}, status: ${_this.status}, createdAt: ${_this.createdAt}, decidedAt: ${_this.decidedAt})';
}


}

/// @nodoc
abstract mixin class $ExtensionCopyWith<$Res>  {
  factory $ExtensionCopyWith(Extension value, $Res Function(Extension) _then) = _$ExtensionCopyWithImpl;
@useResult
$Res call({
 String id, String rentalId, String jatuhTempoBaru, int biayaTambahan, String status, String createdAt, String? decidedAt
});




}
/// @nodoc
class _$ExtensionCopyWithImpl<$Res>
    implements $ExtensionCopyWith<$Res> {
  _$ExtensionCopyWithImpl(this._self, this._then);

  final Extension _self;
  final $Res Function(Extension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rentalId = null,Object? jatuhTempoBaru = null,Object? biayaTambahan = null,Object? status = null,Object? createdAt = null,Object? decidedAt = freezed,}) {
  return _then(Extension(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,jatuhTempoBaru: null == jatuhTempoBaru ? _self.jatuhTempoBaru : jatuhTempoBaru // ignore: cast_nullable_to_non_nullable
as String,biayaTambahan: null == biayaTambahan ? _self.biayaTambahan : biayaTambahan // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Extension].
extension ExtensionPatterns on Extension {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Extension value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Extension() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Extension value)  $default,){
final _that = this;
switch (_that) {
case _Extension():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Extension value)?  $default,){
final _that = this;
switch (_that) {
case _Extension() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rentalId,  String jatuhTempoBaru,  int biayaTambahan,  String status,  String createdAt,  String? decidedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Extension() when $default != null:
return $default(_that.id,_that.rentalId,_that.jatuhTempoBaru,_that.biayaTambahan,_that.status,_that.createdAt,_that.decidedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rentalId,  String jatuhTempoBaru,  int biayaTambahan,  String status,  String createdAt,  String? decidedAt)  $default,) {final _that = this;
switch (_that) {
case _Extension():
return $default(_that.id,_that.rentalId,_that.jatuhTempoBaru,_that.biayaTambahan,_that.status,_that.createdAt,_that.decidedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rentalId,  String jatuhTempoBaru,  int biayaTambahan,  String status,  String createdAt,  String? decidedAt)?  $default,) {final _that = this;
switch (_that) {
case _Extension() when $default != null:
return $default(_that.id,_that.rentalId,_that.jatuhTempoBaru,_that.biayaTambahan,_that.status,_that.createdAt,_that.decidedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Extension implements Extension {
  const _Extension({required this.id, required this.rentalId, required this.jatuhTempoBaru, required this.biayaTambahan, required this.status, required this.createdAt, this.decidedAt});
  factory _Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);

@override final  String id;
@override final  String rentalId;
@override final  String jatuhTempoBaru;
@override final  int biayaTambahan;
@override final  String status;
@override final  String createdAt;
@override final  String? decidedAt;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtensionCopyWith<_Extension> get copyWith => __$ExtensionCopyWithImpl<_Extension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtensionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Extension&&(identical(other.id, id) || other.id == id)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.jatuhTempoBaru, jatuhTempoBaru) || other.jatuhTempoBaru == jatuhTempoBaru)&&(identical(other.biayaTambahan, biayaTambahan) || other.biayaTambahan == biayaTambahan)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rentalId,jatuhTempoBaru,biayaTambahan,status,createdAt,decidedAt);
}

@override
String toString() {
    return 'Extension(id: $id, rentalId: $rentalId, jatuhTempoBaru: $jatuhTempoBaru, biayaTambahan: $biayaTambahan, status: $status, createdAt: $createdAt, decidedAt: $decidedAt)';
}


}

/// @nodoc
abstract mixin class _$ExtensionCopyWith<$Res> implements $ExtensionCopyWith<$Res> {
  factory _$ExtensionCopyWith(_Extension value, $Res Function(_Extension) _then) = __$ExtensionCopyWithImpl;
@override @useResult
$Res call({
 String id, String rentalId, String jatuhTempoBaru, int biayaTambahan, String status, String createdAt, String? decidedAt
});




}
/// @nodoc
class __$ExtensionCopyWithImpl<$Res>
    implements _$ExtensionCopyWith<$Res> {
  __$ExtensionCopyWithImpl(this._self, this._then);

  final _Extension _self;
  final $Res Function(_Extension) _then;

/// Create a copy of Extension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rentalId = null,Object? jatuhTempoBaru = null,Object? biayaTambahan = null,Object? status = null,Object? createdAt = null,Object? decidedAt = freezed,}) {
  return _then(_Extension(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,jatuhTempoBaru: null == jatuhTempoBaru ? _self.jatuhTempoBaru : jatuhTempoBaru // ignore: cast_nullable_to_non_nullable
as String,biayaTambahan: null == biayaTambahan ? _self.biayaTambahan : biayaTambahan // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
