// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankAccount {

 String get bank; String get nomorRekening; String get atasNama;
/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountCopyWith<BankAccount> get copyWith => _$BankAccountCopyWithImpl<BankAccount>(this as BankAccount, _$identity);

  /// Serializes this BankAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BankAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccount&&(identical(other.bank, _this.bank) || other.bank == _this.bank)&&(identical(other.nomorRekening, _this.nomorRekening) || other.nomorRekening == _this.nomorRekening)&&(identical(other.atasNama, _this.atasNama) || other.atasNama == _this.atasNama));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BankAccount;
  return Object.hash(runtimeType,_this.bank,_this.nomorRekening,_this.atasNama);
}

@override
String toString() {
  final _this = this as BankAccount;
  return 'BankAccount(bank: ${_this.bank}, nomorRekening: ${_this.nomorRekening}, atasNama: ${_this.atasNama})';
}


}

/// @nodoc
abstract mixin class $BankAccountCopyWith<$Res>  {
  factory $BankAccountCopyWith(BankAccount value, $Res Function(BankAccount) _then) = _$BankAccountCopyWithImpl;
@useResult
$Res call({
 String bank, String nomorRekening, String atasNama
});




}
/// @nodoc
class _$BankAccountCopyWithImpl<$Res>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._self, this._then);

  final BankAccount _self;
  final $Res Function(BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bank = null,Object? nomorRekening = null,Object? atasNama = null,}) {
  return _then(BankAccount(
bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String,nomorRekening: null == nomorRekening ? _self.nomorRekening : nomorRekening // ignore: cast_nullable_to_non_nullable
as String,atasNama: null == atasNama ? _self.atasNama : atasNama // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccount].
extension BankAccountPatterns on BankAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccount value)  $default,){
final _that = this;
switch (_that) {
case _BankAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bank,  String nomorRekening,  String atasNama)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.bank,_that.nomorRekening,_that.atasNama);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bank,  String nomorRekening,  String atasNama)  $default,) {final _that = this;
switch (_that) {
case _BankAccount():
return $default(_that.bank,_that.nomorRekening,_that.atasNama);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bank,  String nomorRekening,  String atasNama)?  $default,) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.bank,_that.nomorRekening,_that.atasNama);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccount implements BankAccount {
  const _BankAccount({required this.bank, required this.nomorRekening, required this.atasNama});
  factory _BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);

@override final  String bank;
@override final  String nomorRekening;
@override final  String atasNama;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountCopyWith<_BankAccount> get copyWith => __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccount&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.nomorRekening, nomorRekening) || other.nomorRekening == nomorRekening)&&(identical(other.atasNama, atasNama) || other.atasNama == atasNama));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,bank,nomorRekening,atasNama);
}

@override
String toString() {
    return 'BankAccount(bank: $bank, nomorRekening: $nomorRekening, atasNama: $atasNama)';
}


}

/// @nodoc
abstract mixin class _$BankAccountCopyWith<$Res> implements $BankAccountCopyWith<$Res> {
  factory _$BankAccountCopyWith(_BankAccount value, $Res Function(_BankAccount) _then) = __$BankAccountCopyWithImpl;
@override @useResult
$Res call({
 String bank, String nomorRekening, String atasNama
});




}
/// @nodoc
class __$BankAccountCopyWithImpl<$Res>
    implements _$BankAccountCopyWith<$Res> {
  __$BankAccountCopyWithImpl(this._self, this._then);

  final _BankAccount _self;
  final $Res Function(_BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bank = null,Object? nomorRekening = null,Object? atasNama = null,}) {
  return _then(_BankAccount(
bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String,nomorRekening: null == nomorRekening ? _self.nomorRekening : nomorRekening // ignore: cast_nullable_to_non_nullable
as String,atasNama: null == atasNama ? _self.atasNama : atasNama // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Vendor {

 String get id; String get userId; String get namaToko; String get deskripsi; String get logo; String get alamat; String get kota; double get latitude; double get longitude; String get kontak; String get jamOperasional; String get statusVerifikasi; String? get alasanTolak; BankAccount get rekening; int get tarifDendaPerHari; int get persenDeposit; String get kebijakanBatal; List<String> get opsiPengambilan; int get biayaAntarPerKm; double get radiusAntarMaxKm; double get ratingRata; int get totalReview; String get createdAt;
/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorCopyWith<Vendor> get copyWith => _$VendorCopyWithImpl<Vendor>(this as Vendor, _$identity);

  /// Serializes this Vendor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Vendor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vendor&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.namaToko, _this.namaToko) || other.namaToko == _this.namaToko)&&(identical(other.deskripsi, _this.deskripsi) || other.deskripsi == _this.deskripsi)&&(identical(other.logo, _this.logo) || other.logo == _this.logo)&&(identical(other.alamat, _this.alamat) || other.alamat == _this.alamat)&&(identical(other.kota, _this.kota) || other.kota == _this.kota)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.kontak, _this.kontak) || other.kontak == _this.kontak)&&(identical(other.jamOperasional, _this.jamOperasional) || other.jamOperasional == _this.jamOperasional)&&(identical(other.statusVerifikasi, _this.statusVerifikasi) || other.statusVerifikasi == _this.statusVerifikasi)&&(identical(other.alasanTolak, _this.alasanTolak) || other.alasanTolak == _this.alasanTolak)&&(identical(other.rekening, _this.rekening) || other.rekening == _this.rekening)&&(identical(other.tarifDendaPerHari, _this.tarifDendaPerHari) || other.tarifDendaPerHari == _this.tarifDendaPerHari)&&(identical(other.persenDeposit, _this.persenDeposit) || other.persenDeposit == _this.persenDeposit)&&(identical(other.kebijakanBatal, _this.kebijakanBatal) || other.kebijakanBatal == _this.kebijakanBatal)&&const DeepCollectionEquality().equals(other.opsiPengambilan, _this.opsiPengambilan)&&(identical(other.biayaAntarPerKm, _this.biayaAntarPerKm) || other.biayaAntarPerKm == _this.biayaAntarPerKm)&&(identical(other.radiusAntarMaxKm, _this.radiusAntarMaxKm) || other.radiusAntarMaxKm == _this.radiusAntarMaxKm)&&(identical(other.ratingRata, _this.ratingRata) || other.ratingRata == _this.ratingRata)&&(identical(other.totalReview, _this.totalReview) || other.totalReview == _this.totalReview)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Vendor;
  return Object.hashAll([runtimeType,_this.id,_this.userId,_this.namaToko,_this.deskripsi,_this.logo,_this.alamat,_this.kota,_this.latitude,_this.longitude,_this.kontak,_this.jamOperasional,_this.statusVerifikasi,_this.alasanTolak,_this.rekening,_this.tarifDendaPerHari,_this.persenDeposit,_this.kebijakanBatal,const DeepCollectionEquality().hash(_this.opsiPengambilan),_this.biayaAntarPerKm,_this.radiusAntarMaxKm,_this.ratingRata,_this.totalReview,_this.createdAt]);
}

@override
String toString() {
  final _this = this as Vendor;
  return 'Vendor(id: ${_this.id}, userId: ${_this.userId}, namaToko: ${_this.namaToko}, deskripsi: ${_this.deskripsi}, logo: ${_this.logo}, alamat: ${_this.alamat}, kota: ${_this.kota}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, kontak: ${_this.kontak}, jamOperasional: ${_this.jamOperasional}, statusVerifikasi: ${_this.statusVerifikasi}, alasanTolak: ${_this.alasanTolak}, rekening: ${_this.rekening}, tarifDendaPerHari: ${_this.tarifDendaPerHari}, persenDeposit: ${_this.persenDeposit}, kebijakanBatal: ${_this.kebijakanBatal}, opsiPengambilan: ${_this.opsiPengambilan}, biayaAntarPerKm: ${_this.biayaAntarPerKm}, radiusAntarMaxKm: ${_this.radiusAntarMaxKm}, ratingRata: ${_this.ratingRata}, totalReview: ${_this.totalReview}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $VendorCopyWith<$Res>  {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) _then) = _$VendorCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String namaToko, String deskripsi, String logo, String alamat, String kota, double latitude, double longitude, String kontak, String jamOperasional, String statusVerifikasi, String? alasanTolak, BankAccount rekening, int tarifDendaPerHari, int persenDeposit, String kebijakanBatal, List<String> opsiPengambilan, int biayaAntarPerKm, double radiusAntarMaxKm, double ratingRata, int totalReview, String createdAt
});


$BankAccountCopyWith<$Res> get rekening;

}
/// @nodoc
class _$VendorCopyWithImpl<$Res>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._self, this._then);

  final Vendor _self;
  final $Res Function(Vendor) _then;

/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? namaToko = null,Object? deskripsi = null,Object? logo = null,Object? alamat = null,Object? kota = null,Object? latitude = null,Object? longitude = null,Object? kontak = null,Object? jamOperasional = null,Object? statusVerifikasi = null,Object? alasanTolak = freezed,Object? rekening = null,Object? tarifDendaPerHari = null,Object? persenDeposit = null,Object? kebijakanBatal = null,Object? opsiPengambilan = null,Object? biayaAntarPerKm = null,Object? radiusAntarMaxKm = null,Object? ratingRata = null,Object? totalReview = null,Object? createdAt = null,}) {
  return _then(Vendor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,namaToko: null == namaToko ? _self.namaToko : namaToko // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,kota: null == kota ? _self.kota : kota // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,kontak: null == kontak ? _self.kontak : kontak // ignore: cast_nullable_to_non_nullable
as String,jamOperasional: null == jamOperasional ? _self.jamOperasional : jamOperasional // ignore: cast_nullable_to_non_nullable
as String,statusVerifikasi: null == statusVerifikasi ? _self.statusVerifikasi : statusVerifikasi // ignore: cast_nullable_to_non_nullable
as String,alasanTolak: freezed == alasanTolak ? _self.alasanTolak : alasanTolak // ignore: cast_nullable_to_non_nullable
as String?,rekening: null == rekening ? _self.rekening : rekening // ignore: cast_nullable_to_non_nullable
as BankAccount,tarifDendaPerHari: null == tarifDendaPerHari ? _self.tarifDendaPerHari : tarifDendaPerHari // ignore: cast_nullable_to_non_nullable
as int,persenDeposit: null == persenDeposit ? _self.persenDeposit : persenDeposit // ignore: cast_nullable_to_non_nullable
as int,kebijakanBatal: null == kebijakanBatal ? _self.kebijakanBatal : kebijakanBatal // ignore: cast_nullable_to_non_nullable
as String,opsiPengambilan: null == opsiPengambilan ? _self.opsiPengambilan : opsiPengambilan // ignore: cast_nullable_to_non_nullable
as List<String>,biayaAntarPerKm: null == biayaAntarPerKm ? _self.biayaAntarPerKm : biayaAntarPerKm // ignore: cast_nullable_to_non_nullable
as int,radiusAntarMaxKm: null == radiusAntarMaxKm ? _self.radiusAntarMaxKm : radiusAntarMaxKm // ignore: cast_nullable_to_non_nullable
as double,ratingRata: null == ratingRata ? _self.ratingRata : ratingRata // ignore: cast_nullable_to_non_nullable
as double,totalReview: null == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountCopyWith<$Res> get rekening {
  
  return $BankAccountCopyWith<$Res>(_self.rekening, (value) {
    return _then(_self.copyWith(rekening: value));
  });
}
}


/// Adds pattern-matching-related methods to [Vendor].
extension VendorPatterns on Vendor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vendor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vendor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vendor value)  $default,){
final _that = this;
switch (_that) {
case _Vendor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vendor value)?  $default,){
final _that = this;
switch (_that) {
case _Vendor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String namaToko,  String deskripsi,  String logo,  String alamat,  String kota,  double latitude,  double longitude,  String kontak,  String jamOperasional,  String statusVerifikasi,  String? alasanTolak,  BankAccount rekening,  int tarifDendaPerHari,  int persenDeposit,  String kebijakanBatal,  List<String> opsiPengambilan,  int biayaAntarPerKm,  double radiusAntarMaxKm,  double ratingRata,  int totalReview,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vendor() when $default != null:
return $default(_that.id,_that.userId,_that.namaToko,_that.deskripsi,_that.logo,_that.alamat,_that.kota,_that.latitude,_that.longitude,_that.kontak,_that.jamOperasional,_that.statusVerifikasi,_that.alasanTolak,_that.rekening,_that.tarifDendaPerHari,_that.persenDeposit,_that.kebijakanBatal,_that.opsiPengambilan,_that.biayaAntarPerKm,_that.radiusAntarMaxKm,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String namaToko,  String deskripsi,  String logo,  String alamat,  String kota,  double latitude,  double longitude,  String kontak,  String jamOperasional,  String statusVerifikasi,  String? alasanTolak,  BankAccount rekening,  int tarifDendaPerHari,  int persenDeposit,  String kebijakanBatal,  List<String> opsiPengambilan,  int biayaAntarPerKm,  double radiusAntarMaxKm,  double ratingRata,  int totalReview,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Vendor():
return $default(_that.id,_that.userId,_that.namaToko,_that.deskripsi,_that.logo,_that.alamat,_that.kota,_that.latitude,_that.longitude,_that.kontak,_that.jamOperasional,_that.statusVerifikasi,_that.alasanTolak,_that.rekening,_that.tarifDendaPerHari,_that.persenDeposit,_that.kebijakanBatal,_that.opsiPengambilan,_that.biayaAntarPerKm,_that.radiusAntarMaxKm,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String namaToko,  String deskripsi,  String logo,  String alamat,  String kota,  double latitude,  double longitude,  String kontak,  String jamOperasional,  String statusVerifikasi,  String? alasanTolak,  BankAccount rekening,  int tarifDendaPerHari,  int persenDeposit,  String kebijakanBatal,  List<String> opsiPengambilan,  int biayaAntarPerKm,  double radiusAntarMaxKm,  double ratingRata,  int totalReview,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Vendor() when $default != null:
return $default(_that.id,_that.userId,_that.namaToko,_that.deskripsi,_that.logo,_that.alamat,_that.kota,_that.latitude,_that.longitude,_that.kontak,_that.jamOperasional,_that.statusVerifikasi,_that.alasanTolak,_that.rekening,_that.tarifDendaPerHari,_that.persenDeposit,_that.kebijakanBatal,_that.opsiPengambilan,_that.biayaAntarPerKm,_that.radiusAntarMaxKm,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Vendor implements Vendor {
  const _Vendor({required this.id, required this.userId, required this.namaToko, required this.deskripsi, required this.logo, required this.alamat, required this.kota, required this.latitude, required this.longitude, required this.kontak, required this.jamOperasional, required this.statusVerifikasi, this.alasanTolak, required this.rekening, required this.tarifDendaPerHari, required this.persenDeposit, required this.kebijakanBatal, required  List<String> opsiPengambilan, required this.biayaAntarPerKm, required this.radiusAntarMaxKm, required this.ratingRata, required this.totalReview, required this.createdAt}): _opsiPengambilan = opsiPengambilan;
  factory _Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String namaToko;
@override final  String deskripsi;
@override final  String logo;
@override final  String alamat;
@override final  String kota;
@override final  double latitude;
@override final  double longitude;
@override final  String kontak;
@override final  String jamOperasional;
@override final  String statusVerifikasi;
@override final  String? alasanTolak;
@override final  BankAccount rekening;
@override final  int tarifDendaPerHari;
@override final  int persenDeposit;
@override final  String kebijakanBatal;
 final  List<String> _opsiPengambilan;
@override List<String> get opsiPengambilan {
  if (_opsiPengambilan is EqualUnmodifiableListView) return _opsiPengambilan;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_opsiPengambilan);
}

@override final  int biayaAntarPerKm;
@override final  double radiusAntarMaxKm;
@override final  double ratingRata;
@override final  int totalReview;
@override final  String createdAt;

/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorCopyWith<_Vendor> get copyWith => __$VendorCopyWithImpl<_Vendor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vendor&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.namaToko, namaToko) || other.namaToko == namaToko)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.kota, kota) || other.kota == kota)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.kontak, kontak) || other.kontak == kontak)&&(identical(other.jamOperasional, jamOperasional) || other.jamOperasional == jamOperasional)&&(identical(other.statusVerifikasi, statusVerifikasi) || other.statusVerifikasi == statusVerifikasi)&&(identical(other.alasanTolak, alasanTolak) || other.alasanTolak == alasanTolak)&&(identical(other.rekening, rekening) || other.rekening == rekening)&&(identical(other.tarifDendaPerHari, tarifDendaPerHari) || other.tarifDendaPerHari == tarifDendaPerHari)&&(identical(other.persenDeposit, persenDeposit) || other.persenDeposit == persenDeposit)&&(identical(other.kebijakanBatal, kebijakanBatal) || other.kebijakanBatal == kebijakanBatal)&&const DeepCollectionEquality().equals(other.opsiPengambilan, _opsiPengambilan)&&(identical(other.biayaAntarPerKm, biayaAntarPerKm) || other.biayaAntarPerKm == biayaAntarPerKm)&&(identical(other.radiusAntarMaxKm, radiusAntarMaxKm) || other.radiusAntarMaxKm == radiusAntarMaxKm)&&(identical(other.ratingRata, ratingRata) || other.ratingRata == ratingRata)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,userId,namaToko,deskripsi,logo,alamat,kota,latitude,longitude,kontak,jamOperasional,statusVerifikasi,alasanTolak,rekening,tarifDendaPerHari,persenDeposit,kebijakanBatal,const DeepCollectionEquality().hash(_opsiPengambilan),biayaAntarPerKm,radiusAntarMaxKm,ratingRata,totalReview,createdAt]);
}

@override
String toString() {
    return 'Vendor(id: $id, userId: $userId, namaToko: $namaToko, deskripsi: $deskripsi, logo: $logo, alamat: $alamat, kota: $kota, latitude: $latitude, longitude: $longitude, kontak: $kontak, jamOperasional: $jamOperasional, statusVerifikasi: $statusVerifikasi, alasanTolak: $alasanTolak, rekening: $rekening, tarifDendaPerHari: $tarifDendaPerHari, persenDeposit: $persenDeposit, kebijakanBatal: $kebijakanBatal, opsiPengambilan: $opsiPengambilan, biayaAntarPerKm: $biayaAntarPerKm, radiusAntarMaxKm: $radiusAntarMaxKm, ratingRata: $ratingRata, totalReview: $totalReview, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VendorCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$VendorCopyWith(_Vendor value, $Res Function(_Vendor) _then) = __$VendorCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String namaToko, String deskripsi, String logo, String alamat, String kota, double latitude, double longitude, String kontak, String jamOperasional, String statusVerifikasi, String? alasanTolak, BankAccount rekening, int tarifDendaPerHari, int persenDeposit, String kebijakanBatal, List<String> opsiPengambilan, int biayaAntarPerKm, double radiusAntarMaxKm, double ratingRata, int totalReview, String createdAt
});


@override $BankAccountCopyWith<$Res> get rekening;

}
/// @nodoc
class __$VendorCopyWithImpl<$Res>
    implements _$VendorCopyWith<$Res> {
  __$VendorCopyWithImpl(this._self, this._then);

  final _Vendor _self;
  final $Res Function(_Vendor) _then;

/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? namaToko = null,Object? deskripsi = null,Object? logo = null,Object? alamat = null,Object? kota = null,Object? latitude = null,Object? longitude = null,Object? kontak = null,Object? jamOperasional = null,Object? statusVerifikasi = null,Object? alasanTolak = freezed,Object? rekening = null,Object? tarifDendaPerHari = null,Object? persenDeposit = null,Object? kebijakanBatal = null,Object? opsiPengambilan = null,Object? biayaAntarPerKm = null,Object? radiusAntarMaxKm = null,Object? ratingRata = null,Object? totalReview = null,Object? createdAt = null,}) {
  return _then(_Vendor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,namaToko: null == namaToko ? _self.namaToko : namaToko // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,alamat: null == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String,kota: null == kota ? _self.kota : kota // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,kontak: null == kontak ? _self.kontak : kontak // ignore: cast_nullable_to_non_nullable
as String,jamOperasional: null == jamOperasional ? _self.jamOperasional : jamOperasional // ignore: cast_nullable_to_non_nullable
as String,statusVerifikasi: null == statusVerifikasi ? _self.statusVerifikasi : statusVerifikasi // ignore: cast_nullable_to_non_nullable
as String,alasanTolak: freezed == alasanTolak ? _self.alasanTolak : alasanTolak // ignore: cast_nullable_to_non_nullable
as String?,rekening: null == rekening ? _self.rekening : rekening // ignore: cast_nullable_to_non_nullable
as BankAccount,tarifDendaPerHari: null == tarifDendaPerHari ? _self.tarifDendaPerHari : tarifDendaPerHari // ignore: cast_nullable_to_non_nullable
as int,persenDeposit: null == persenDeposit ? _self.persenDeposit : persenDeposit // ignore: cast_nullable_to_non_nullable
as int,kebijakanBatal: null == kebijakanBatal ? _self.kebijakanBatal : kebijakanBatal // ignore: cast_nullable_to_non_nullable
as String,opsiPengambilan: null == opsiPengambilan ? _self._opsiPengambilan : opsiPengambilan // ignore: cast_nullable_to_non_nullable
as List<String>,biayaAntarPerKm: null == biayaAntarPerKm ? _self.biayaAntarPerKm : biayaAntarPerKm // ignore: cast_nullable_to_non_nullable
as int,radiusAntarMaxKm: null == radiusAntarMaxKm ? _self.radiusAntarMaxKm : radiusAntarMaxKm // ignore: cast_nullable_to_non_nullable
as double,ratingRata: null == ratingRata ? _self.ratingRata : ratingRata // ignore: cast_nullable_to_non_nullable
as double,totalReview: null == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Vendor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountCopyWith<$Res> get rekening {
  
  return $BankAccountCopyWith<$Res>(_self.rekening, (value) {
    return _then(_self.copyWith(rekening: value));
  });
}
}

// dart format on
