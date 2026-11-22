// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get id; String get email; String get nama; String get noHp; String get role; bool get isVerified; String get status; String? get createdAt; String? get alamat; String? get noIdentitas; String? get fotoIdentitas; String? get vendorId;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as User;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.nama, _this.nama) || other.nama == _this.nama)&&(identical(other.noHp, _this.noHp) || other.noHp == _this.noHp)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.isVerified, _this.isVerified) || other.isVerified == _this.isVerified)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.alamat, _this.alamat) || other.alamat == _this.alamat)&&(identical(other.noIdentitas, _this.noIdentitas) || other.noIdentitas == _this.noIdentitas)&&(identical(other.fotoIdentitas, _this.fotoIdentitas) || other.fotoIdentitas == _this.fotoIdentitas)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as User;
  return Object.hash(runtimeType,_this.id,_this.email,_this.nama,_this.noHp,_this.role,_this.isVerified,_this.status,_this.createdAt,_this.alamat,_this.noIdentitas,_this.fotoIdentitas,_this.vendorId);
}

@override
String toString() {
  final _this = this as User;
  return 'User(id: ${_this.id}, email: ${_this.email}, nama: ${_this.nama}, noHp: ${_this.noHp}, role: ${_this.role}, isVerified: ${_this.isVerified}, status: ${_this.status}, createdAt: ${_this.createdAt}, alamat: ${_this.alamat}, noIdentitas: ${_this.noIdentitas}, fotoIdentitas: ${_this.fotoIdentitas}, vendorId: ${_this.vendorId})';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String nama, String noHp, String role, bool isVerified, String status, String? createdAt, String? alamat, String? noIdentitas, String? fotoIdentitas, String? vendorId
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? nama = null,Object? noHp = null,Object? role = null,Object? isVerified = null,Object? status = null,Object? createdAt = freezed,Object? alamat = freezed,Object? noIdentitas = freezed,Object? fotoIdentitas = freezed,Object? vendorId = freezed,}) {
  return _then(User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,noHp: null == noHp ? _self.noHp : noHp // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,noIdentitas: freezed == noIdentitas ? _self.noIdentitas : noIdentitas // ignore: cast_nullable_to_non_nullable
as String?,fotoIdentitas: freezed == fotoIdentitas ? _self.fotoIdentitas : fotoIdentitas // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String nama,  String noHp,  String role,  bool isVerified,  String status,  String? createdAt,  String? alamat,  String? noIdentitas,  String? fotoIdentitas,  String? vendorId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.nama,_that.noHp,_that.role,_that.isVerified,_that.status,_that.createdAt,_that.alamat,_that.noIdentitas,_that.fotoIdentitas,_that.vendorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String nama,  String noHp,  String role,  bool isVerified,  String status,  String? createdAt,  String? alamat,  String? noIdentitas,  String? fotoIdentitas,  String? vendorId)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.email,_that.nama,_that.noHp,_that.role,_that.isVerified,_that.status,_that.createdAt,_that.alamat,_that.noIdentitas,_that.fotoIdentitas,_that.vendorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String nama,  String noHp,  String role,  bool isVerified,  String status,  String? createdAt,  String? alamat,  String? noIdentitas,  String? fotoIdentitas,  String? vendorId)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.nama,_that.noHp,_that.role,_that.isVerified,_that.status,_that.createdAt,_that.alamat,_that.noIdentitas,_that.fotoIdentitas,_that.vendorId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.email, required this.nama, required this.noHp, required this.role, required this.isVerified, required this.status, this.createdAt, this.alamat, this.noIdentitas, this.fotoIdentitas, this.vendorId});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  String email;
@override final  String nama;
@override final  String noHp;
@override final  String role;
@override final  bool isVerified;
@override final  String status;
@override final  String? createdAt;
@override final  String? alamat;
@override final  String? noIdentitas;
@override final  String? fotoIdentitas;
@override final  String? vendorId;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.noHp, noHp) || other.noHp == noHp)&&(identical(other.role, role) || other.role == role)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.alamat, alamat) || other.alamat == alamat)&&(identical(other.noIdentitas, noIdentitas) || other.noIdentitas == noIdentitas)&&(identical(other.fotoIdentitas, fotoIdentitas) || other.fotoIdentitas == fotoIdentitas)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,nama,noHp,role,isVerified,status,createdAt,alamat,noIdentitas,fotoIdentitas,vendorId);
}

@override
String toString() {
    return 'User(id: $id, email: $email, nama: $nama, noHp: $noHp, role: $role, isVerified: $isVerified, status: $status, createdAt: $createdAt, alamat: $alamat, noIdentitas: $noIdentitas, fotoIdentitas: $fotoIdentitas, vendorId: $vendorId)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String nama, String noHp, String role, bool isVerified, String status, String? createdAt, String? alamat, String? noIdentitas, String? fotoIdentitas, String? vendorId
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? nama = null,Object? noHp = null,Object? role = null,Object? isVerified = null,Object? status = null,Object? createdAt = freezed,Object? alamat = freezed,Object? noIdentitas = freezed,Object? fotoIdentitas = freezed,Object? vendorId = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,noHp: null == noHp ? _self.noHp : noHp // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,alamat: freezed == alamat ? _self.alamat : alamat // ignore: cast_nullable_to_non_nullable
as String?,noIdentitas: freezed == noIdentitas ? _self.noIdentitas : noIdentitas // ignore: cast_nullable_to_non_nullable
as String?,fotoIdentitas: freezed == fotoIdentitas ? _self.fotoIdentitas : fotoIdentitas // ignore: cast_nullable_to_non_nullable
as String?,vendorId: freezed == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
