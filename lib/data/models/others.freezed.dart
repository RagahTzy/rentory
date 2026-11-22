// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'others.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review {

 String get id; String get rentalId; String get userId; String get vendorId; String get itemId; int get rating; String get komentar; String? get balasanVendor; String? get balasanAt; String get createdAt;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Review;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.komentar, _this.komentar) || other.komentar == _this.komentar)&&(identical(other.balasanVendor, _this.balasanVendor) || other.balasanVendor == _this.balasanVendor)&&(identical(other.balasanAt, _this.balasanAt) || other.balasanAt == _this.balasanAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Review;
  return Object.hash(runtimeType,_this.id,_this.rentalId,_this.userId,_this.vendorId,_this.itemId,_this.rating,_this.komentar,_this.balasanVendor,_this.balasanAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as Review;
  return 'Review(id: ${_this.id}, rentalId: ${_this.rentalId}, userId: ${_this.userId}, vendorId: ${_this.vendorId}, itemId: ${_this.itemId}, rating: ${_this.rating}, komentar: ${_this.komentar}, balasanVendor: ${_this.balasanVendor}, balasanAt: ${_this.balasanAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String id, String rentalId, String userId, String vendorId, String itemId, int rating, String komentar, String? balasanVendor, String? balasanAt, String createdAt
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rentalId = null,Object? userId = null,Object? vendorId = null,Object? itemId = null,Object? rating = null,Object? komentar = null,Object? balasanVendor = freezed,Object? balasanAt = freezed,Object? createdAt = null,}) {
  return _then(Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,komentar: null == komentar ? _self.komentar : komentar // ignore: cast_nullable_to_non_nullable
as String,balasanVendor: freezed == balasanVendor ? _self.balasanVendor : balasanVendor // ignore: cast_nullable_to_non_nullable
as String?,balasanAt: freezed == balasanAt ? _self.balasanAt : balasanAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rentalId,  String userId,  String vendorId,  String itemId,  int rating,  String komentar,  String? balasanVendor,  String? balasanAt,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.rentalId,_that.userId,_that.vendorId,_that.itemId,_that.rating,_that.komentar,_that.balasanVendor,_that.balasanAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rentalId,  String userId,  String vendorId,  String itemId,  int rating,  String komentar,  String? balasanVendor,  String? balasanAt,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.id,_that.rentalId,_that.userId,_that.vendorId,_that.itemId,_that.rating,_that.komentar,_that.balasanVendor,_that.balasanAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rentalId,  String userId,  String vendorId,  String itemId,  int rating,  String komentar,  String? balasanVendor,  String? balasanAt,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.rentalId,_that.userId,_that.vendorId,_that.itemId,_that.rating,_that.komentar,_that.balasanVendor,_that.balasanAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({required this.id, required this.rentalId, required this.userId, required this.vendorId, required this.itemId, required this.rating, required this.komentar, this.balasanVendor, this.balasanAt, required this.createdAt});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String id;
@override final  String rentalId;
@override final  String userId;
@override final  String vendorId;
@override final  String itemId;
@override final  int rating;
@override final  String komentar;
@override final  String? balasanVendor;
@override final  String? balasanAt;
@override final  String createdAt;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.id, id) || other.id == id)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.komentar, komentar) || other.komentar == komentar)&&(identical(other.balasanVendor, balasanVendor) || other.balasanVendor == balasanVendor)&&(identical(other.balasanAt, balasanAt) || other.balasanAt == balasanAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rentalId,userId,vendorId,itemId,rating,komentar,balasanVendor,balasanAt,createdAt);
}

@override
String toString() {
    return 'Review(id: $id, rentalId: $rentalId, userId: $userId, vendorId: $vendorId, itemId: $itemId, rating: $rating, komentar: $komentar, balasanVendor: $balasanVendor, balasanAt: $balasanAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String rentalId, String userId, String vendorId, String itemId, int rating, String komentar, String? balasanVendor, String? balasanAt, String createdAt
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rentalId = null,Object? userId = null,Object? vendorId = null,Object? itemId = null,Object? rating = null,Object? komentar = null,Object? balasanVendor = freezed,Object? balasanAt = freezed,Object? createdAt = null,}) {
  return _then(_Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,komentar: null == komentar ? _self.komentar : komentar // ignore: cast_nullable_to_non_nullable
as String,balasanVendor: freezed == balasanVendor ? _self.balasanVendor : balasanVendor // ignore: cast_nullable_to_non_nullable
as String?,balasanAt: freezed == balasanAt ? _self.balasanAt : balasanAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VendorBlacklist {

 String get id; String get vendorId; String get userId; String get alasan; String get createdAt;
/// Create a copy of VendorBlacklist
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorBlacklistCopyWith<VendorBlacklist> get copyWith => _$VendorBlacklistCopyWithImpl<VendorBlacklist>(this as VendorBlacklist, _$identity);

  /// Serializes this VendorBlacklist to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VendorBlacklist;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorBlacklist&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.alasan, _this.alasan) || other.alasan == _this.alasan)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VendorBlacklist;
  return Object.hash(runtimeType,_this.id,_this.vendorId,_this.userId,_this.alasan,_this.createdAt);
}

@override
String toString() {
  final _this = this as VendorBlacklist;
  return 'VendorBlacklist(id: ${_this.id}, vendorId: ${_this.vendorId}, userId: ${_this.userId}, alasan: ${_this.alasan}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $VendorBlacklistCopyWith<$Res>  {
  factory $VendorBlacklistCopyWith(VendorBlacklist value, $Res Function(VendorBlacklist) _then) = _$VendorBlacklistCopyWithImpl;
@useResult
$Res call({
 String id, String vendorId, String userId, String alasan, String createdAt
});




}
/// @nodoc
class _$VendorBlacklistCopyWithImpl<$Res>
    implements $VendorBlacklistCopyWith<$Res> {
  _$VendorBlacklistCopyWithImpl(this._self, this._then);

  final VendorBlacklist _self;
  final $Res Function(VendorBlacklist) _then;

/// Create a copy of VendorBlacklist
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorId = null,Object? userId = null,Object? alasan = null,Object? createdAt = null,}) {
  return _then(VendorBlacklist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,alasan: null == alasan ? _self.alasan : alasan // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorBlacklist].
extension VendorBlacklistPatterns on VendorBlacklist {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorBlacklist value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorBlacklist() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorBlacklist value)  $default,){
final _that = this;
switch (_that) {
case _VendorBlacklist():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorBlacklist value)?  $default,){
final _that = this;
switch (_that) {
case _VendorBlacklist() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String vendorId,  String userId,  String alasan,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorBlacklist() when $default != null:
return $default(_that.id,_that.vendorId,_that.userId,_that.alasan,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String vendorId,  String userId,  String alasan,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _VendorBlacklist():
return $default(_that.id,_that.vendorId,_that.userId,_that.alasan,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String vendorId,  String userId,  String alasan,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VendorBlacklist() when $default != null:
return $default(_that.id,_that.vendorId,_that.userId,_that.alasan,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorBlacklist implements VendorBlacklist {
  const _VendorBlacklist({required this.id, required this.vendorId, required this.userId, required this.alasan, required this.createdAt});
  factory _VendorBlacklist.fromJson(Map<String, dynamic> json) => _$VendorBlacklistFromJson(json);

@override final  String id;
@override final  String vendorId;
@override final  String userId;
@override final  String alasan;
@override final  String createdAt;

/// Create a copy of VendorBlacklist
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorBlacklistCopyWith<_VendorBlacklist> get copyWith => __$VendorBlacklistCopyWithImpl<_VendorBlacklist>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorBlacklistToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorBlacklist&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.alasan, alasan) || other.alasan == alasan)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,vendorId,userId,alasan,createdAt);
}

@override
String toString() {
    return 'VendorBlacklist(id: $id, vendorId: $vendorId, userId: $userId, alasan: $alasan, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VendorBlacklistCopyWith<$Res> implements $VendorBlacklistCopyWith<$Res> {
  factory _$VendorBlacklistCopyWith(_VendorBlacklist value, $Res Function(_VendorBlacklist) _then) = __$VendorBlacklistCopyWithImpl;
@override @useResult
$Res call({
 String id, String vendorId, String userId, String alasan, String createdAt
});




}
/// @nodoc
class __$VendorBlacklistCopyWithImpl<$Res>
    implements _$VendorBlacklistCopyWith<$Res> {
  __$VendorBlacklistCopyWithImpl(this._self, this._then);

  final _VendorBlacklist _self;
  final $Res Function(_VendorBlacklist) _then;

/// Create a copy of VendorBlacklist
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorId = null,Object? userId = null,Object? alasan = null,Object? createdAt = null,}) {
  return _then(_VendorBlacklist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,alasan: null == alasan ? _self.alasan : alasan // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Message {

 String get id; String get pengirimId; String get penerimaId; String? get rentalId; String? get bookingId; String get isi; String get createdAt; bool get isRead;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Message;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.pengirimId, _this.pengirimId) || other.pengirimId == _this.pengirimId)&&(identical(other.penerimaId, _this.penerimaId) || other.penerimaId == _this.penerimaId)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.bookingId, _this.bookingId) || other.bookingId == _this.bookingId)&&(identical(other.isi, _this.isi) || other.isi == _this.isi)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.isRead, _this.isRead) || other.isRead == _this.isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Message;
  return Object.hash(runtimeType,_this.id,_this.pengirimId,_this.penerimaId,_this.rentalId,_this.bookingId,_this.isi,_this.createdAt,_this.isRead);
}

@override
String toString() {
  final _this = this as Message;
  return 'Message(id: ${_this.id}, pengirimId: ${_this.pengirimId}, penerimaId: ${_this.penerimaId}, rentalId: ${_this.rentalId}, bookingId: ${_this.bookingId}, isi: ${_this.isi}, createdAt: ${_this.createdAt}, isRead: ${_this.isRead})';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
 String id, String pengirimId, String penerimaId, String? rentalId, String? bookingId, String isi, String createdAt, bool isRead
});




}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pengirimId = null,Object? penerimaId = null,Object? rentalId = freezed,Object? bookingId = freezed,Object? isi = null,Object? createdAt = null,Object? isRead = null,}) {
  return _then(Message(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pengirimId: null == pengirimId ? _self.pengirimId : pengirimId // ignore: cast_nullable_to_non_nullable
as String,penerimaId: null == penerimaId ? _self.penerimaId : penerimaId // ignore: cast_nullable_to_non_nullable
as String,rentalId: freezed == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String?,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Message value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Message value)  $default,){
final _that = this;
switch (_that) {
case _Message():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Message value)?  $default,){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String pengirimId,  String penerimaId,  String? rentalId,  String? bookingId,  String isi,  String createdAt,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.pengirimId,_that.penerimaId,_that.rentalId,_that.bookingId,_that.isi,_that.createdAt,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String pengirimId,  String penerimaId,  String? rentalId,  String? bookingId,  String isi,  String createdAt,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _Message():
return $default(_that.id,_that.pengirimId,_that.penerimaId,_that.rentalId,_that.bookingId,_that.isi,_that.createdAt,_that.isRead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String pengirimId,  String penerimaId,  String? rentalId,  String? bookingId,  String isi,  String createdAt,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.pengirimId,_that.penerimaId,_that.rentalId,_that.bookingId,_that.isi,_that.createdAt,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Message implements Message {
  const _Message({required this.id, required this.pengirimId, required this.penerimaId, this.rentalId, this.bookingId, required this.isi, required this.createdAt, required this.isRead});
  factory _Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

@override final  String id;
@override final  String pengirimId;
@override final  String penerimaId;
@override final  String? rentalId;
@override final  String? bookingId;
@override final  String isi;
@override final  String createdAt;
@override final  bool isRead;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.id, id) || other.id == id)&&(identical(other.pengirimId, pengirimId) || other.pengirimId == pengirimId)&&(identical(other.penerimaId, penerimaId) || other.penerimaId == penerimaId)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.isi, isi) || other.isi == isi)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,pengirimId,penerimaId,rentalId,bookingId,isi,createdAt,isRead);
}

@override
String toString() {
    return 'Message(id: $id, pengirimId: $pengirimId, penerimaId: $penerimaId, rentalId: $rentalId, bookingId: $bookingId, isi: $isi, createdAt: $createdAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String pengirimId, String penerimaId, String? rentalId, String? bookingId, String isi, String createdAt, bool isRead
});




}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pengirimId = null,Object? penerimaId = null,Object? rentalId = freezed,Object? bookingId = freezed,Object? isi = null,Object? createdAt = null,Object? isRead = null,}) {
  return _then(_Message(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pengirimId: null == pengirimId ? _self.pengirimId : pengirimId // ignore: cast_nullable_to_non_nullable
as String,penerimaId: null == penerimaId ? _self.penerimaId : penerimaId // ignore: cast_nullable_to_non_nullable
as String,rentalId: freezed == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String?,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Maintenance {

 String get id; String get itemId; String get deskripsi; int get biaya; String get tglMulai; String get tglSelesai; String get status; String get createdAt;
/// Create a copy of Maintenance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaintenanceCopyWith<Maintenance> get copyWith => _$MaintenanceCopyWithImpl<Maintenance>(this as Maintenance, _$identity);

  /// Serializes this Maintenance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Maintenance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Maintenance&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.deskripsi, _this.deskripsi) || other.deskripsi == _this.deskripsi)&&(identical(other.biaya, _this.biaya) || other.biaya == _this.biaya)&&(identical(other.tglMulai, _this.tglMulai) || other.tglMulai == _this.tglMulai)&&(identical(other.tglSelesai, _this.tglSelesai) || other.tglSelesai == _this.tglSelesai)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Maintenance;
  return Object.hash(runtimeType,_this.id,_this.itemId,_this.deskripsi,_this.biaya,_this.tglMulai,_this.tglSelesai,_this.status,_this.createdAt);
}

@override
String toString() {
  final _this = this as Maintenance;
  return 'Maintenance(id: ${_this.id}, itemId: ${_this.itemId}, deskripsi: ${_this.deskripsi}, biaya: ${_this.biaya}, tglMulai: ${_this.tglMulai}, tglSelesai: ${_this.tglSelesai}, status: ${_this.status}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MaintenanceCopyWith<$Res>  {
  factory $MaintenanceCopyWith(Maintenance value, $Res Function(Maintenance) _then) = _$MaintenanceCopyWithImpl;
@useResult
$Res call({
 String id, String itemId, String deskripsi, int biaya, String tglMulai, String tglSelesai, String status, String createdAt
});




}
/// @nodoc
class _$MaintenanceCopyWithImpl<$Res>
    implements $MaintenanceCopyWith<$Res> {
  _$MaintenanceCopyWithImpl(this._self, this._then);

  final Maintenance _self;
  final $Res Function(Maintenance) _then;

/// Create a copy of Maintenance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? deskripsi = null,Object? biaya = null,Object? tglMulai = null,Object? tglSelesai = null,Object? status = null,Object? createdAt = null,}) {
  return _then(Maintenance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,biaya: null == biaya ? _self.biaya : biaya // ignore: cast_nullable_to_non_nullable
as int,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,tglSelesai: null == tglSelesai ? _self.tglSelesai : tglSelesai // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Maintenance].
extension MaintenancePatterns on Maintenance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Maintenance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Maintenance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Maintenance value)  $default,){
final _that = this;
switch (_that) {
case _Maintenance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Maintenance value)?  $default,){
final _that = this;
switch (_that) {
case _Maintenance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String itemId,  String deskripsi,  int biaya,  String tglMulai,  String tglSelesai,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Maintenance() when $default != null:
return $default(_that.id,_that.itemId,_that.deskripsi,_that.biaya,_that.tglMulai,_that.tglSelesai,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String itemId,  String deskripsi,  int biaya,  String tglMulai,  String tglSelesai,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Maintenance():
return $default(_that.id,_that.itemId,_that.deskripsi,_that.biaya,_that.tglMulai,_that.tglSelesai,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String itemId,  String deskripsi,  int biaya,  String tglMulai,  String tglSelesai,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Maintenance() when $default != null:
return $default(_that.id,_that.itemId,_that.deskripsi,_that.biaya,_that.tglMulai,_that.tglSelesai,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Maintenance implements Maintenance {
  const _Maintenance({required this.id, required this.itemId, required this.deskripsi, required this.biaya, required this.tglMulai, required this.tglSelesai, required this.status, required this.createdAt});
  factory _Maintenance.fromJson(Map<String, dynamic> json) => _$MaintenanceFromJson(json);

@override final  String id;
@override final  String itemId;
@override final  String deskripsi;
@override final  int biaya;
@override final  String tglMulai;
@override final  String tglSelesai;
@override final  String status;
@override final  String createdAt;

/// Create a copy of Maintenance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaintenanceCopyWith<_Maintenance> get copyWith => __$MaintenanceCopyWithImpl<_Maintenance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaintenanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Maintenance&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.biaya, biaya) || other.biaya == biaya)&&(identical(other.tglMulai, tglMulai) || other.tglMulai == tglMulai)&&(identical(other.tglSelesai, tglSelesai) || other.tglSelesai == tglSelesai)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,itemId,deskripsi,biaya,tglMulai,tglSelesai,status,createdAt);
}

@override
String toString() {
    return 'Maintenance(id: $id, itemId: $itemId, deskripsi: $deskripsi, biaya: $biaya, tglMulai: $tglMulai, tglSelesai: $tglSelesai, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MaintenanceCopyWith<$Res> implements $MaintenanceCopyWith<$Res> {
  factory _$MaintenanceCopyWith(_Maintenance value, $Res Function(_Maintenance) _then) = __$MaintenanceCopyWithImpl;
@override @useResult
$Res call({
 String id, String itemId, String deskripsi, int biaya, String tglMulai, String tglSelesai, String status, String createdAt
});




}
/// @nodoc
class __$MaintenanceCopyWithImpl<$Res>
    implements _$MaintenanceCopyWith<$Res> {
  __$MaintenanceCopyWithImpl(this._self, this._then);

  final _Maintenance _self;
  final $Res Function(_Maintenance) _then;

/// Create a copy of Maintenance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? deskripsi = null,Object? biaya = null,Object? tglMulai = null,Object? tglSelesai = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_Maintenance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,biaya: null == biaya ? _self.biaya : biaya // ignore: cast_nullable_to_non_nullable
as int,tglMulai: null == tglMulai ? _self.tglMulai : tglMulai // ignore: cast_nullable_to_non_nullable
as String,tglSelesai: null == tglSelesai ? _self.tglSelesai : tglSelesai // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Dispute {

 String get id; String get rentalId; String get pelaporId; String get deskripsi; List<String> get bukti; String get status; String? get keputusanAdmin; String? get decidedAt; String get createdAt;
/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeCopyWith<Dispute> get copyWith => _$DisputeCopyWithImpl<Dispute>(this as Dispute, _$identity);

  /// Serializes this Dispute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Dispute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dispute&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rentalId, _this.rentalId) || other.rentalId == _this.rentalId)&&(identical(other.pelaporId, _this.pelaporId) || other.pelaporId == _this.pelaporId)&&(identical(other.deskripsi, _this.deskripsi) || other.deskripsi == _this.deskripsi)&&const DeepCollectionEquality().equals(other.bukti, _this.bukti)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.keputusanAdmin, _this.keputusanAdmin) || other.keputusanAdmin == _this.keputusanAdmin)&&(identical(other.decidedAt, _this.decidedAt) || other.decidedAt == _this.decidedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Dispute;
  return Object.hash(runtimeType,_this.id,_this.rentalId,_this.pelaporId,_this.deskripsi,const DeepCollectionEquality().hash(_this.bukti),_this.status,_this.keputusanAdmin,_this.decidedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as Dispute;
  return 'Dispute(id: ${_this.id}, rentalId: ${_this.rentalId}, pelaporId: ${_this.pelaporId}, deskripsi: ${_this.deskripsi}, bukti: ${_this.bukti}, status: ${_this.status}, keputusanAdmin: ${_this.keputusanAdmin}, decidedAt: ${_this.decidedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $DisputeCopyWith<$Res>  {
  factory $DisputeCopyWith(Dispute value, $Res Function(Dispute) _then) = _$DisputeCopyWithImpl;
@useResult
$Res call({
 String id, String rentalId, String pelaporId, String deskripsi, List<String> bukti, String status, String? keputusanAdmin, String? decidedAt, String createdAt
});




}
/// @nodoc
class _$DisputeCopyWithImpl<$Res>
    implements $DisputeCopyWith<$Res> {
  _$DisputeCopyWithImpl(this._self, this._then);

  final Dispute _self;
  final $Res Function(Dispute) _then;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rentalId = null,Object? pelaporId = null,Object? deskripsi = null,Object? bukti = null,Object? status = null,Object? keputusanAdmin = freezed,Object? decidedAt = freezed,Object? createdAt = null,}) {
  return _then(Dispute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,pelaporId: null == pelaporId ? _self.pelaporId : pelaporId // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,bukti: null == bukti ? _self.bukti : bukti // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,keputusanAdmin: freezed == keputusanAdmin ? _self.keputusanAdmin : keputusanAdmin // ignore: cast_nullable_to_non_nullable
as String?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Dispute].
extension DisputePatterns on Dispute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dispute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dispute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dispute value)  $default,){
final _that = this;
switch (_that) {
case _Dispute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dispute value)?  $default,){
final _that = this;
switch (_that) {
case _Dispute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rentalId,  String pelaporId,  String deskripsi,  List<String> bukti,  String status,  String? keputusanAdmin,  String? decidedAt,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dispute() when $default != null:
return $default(_that.id,_that.rentalId,_that.pelaporId,_that.deskripsi,_that.bukti,_that.status,_that.keputusanAdmin,_that.decidedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rentalId,  String pelaporId,  String deskripsi,  List<String> bukti,  String status,  String? keputusanAdmin,  String? decidedAt,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Dispute():
return $default(_that.id,_that.rentalId,_that.pelaporId,_that.deskripsi,_that.bukti,_that.status,_that.keputusanAdmin,_that.decidedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rentalId,  String pelaporId,  String deskripsi,  List<String> bukti,  String status,  String? keputusanAdmin,  String? decidedAt,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Dispute() when $default != null:
return $default(_that.id,_that.rentalId,_that.pelaporId,_that.deskripsi,_that.bukti,_that.status,_that.keputusanAdmin,_that.decidedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dispute implements Dispute {
  const _Dispute({required this.id, required this.rentalId, required this.pelaporId, required this.deskripsi, required  List<String> bukti, required this.status, this.keputusanAdmin, this.decidedAt, required this.createdAt}): _bukti = bukti;
  factory _Dispute.fromJson(Map<String, dynamic> json) => _$DisputeFromJson(json);

@override final  String id;
@override final  String rentalId;
@override final  String pelaporId;
@override final  String deskripsi;
 final  List<String> _bukti;
@override List<String> get bukti {
  if (_bukti is EqualUnmodifiableListView) return _bukti;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bukti);
}

@override final  String status;
@override final  String? keputusanAdmin;
@override final  String? decidedAt;
@override final  String createdAt;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeCopyWith<_Dispute> get copyWith => __$DisputeCopyWithImpl<_Dispute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dispute&&(identical(other.id, id) || other.id == id)&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.pelaporId, pelaporId) || other.pelaporId == pelaporId)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other.bukti, _bukti)&&(identical(other.status, status) || other.status == status)&&(identical(other.keputusanAdmin, keputusanAdmin) || other.keputusanAdmin == keputusanAdmin)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rentalId,pelaporId,deskripsi,const DeepCollectionEquality().hash(_bukti),status,keputusanAdmin,decidedAt,createdAt);
}

@override
String toString() {
    return 'Dispute(id: $id, rentalId: $rentalId, pelaporId: $pelaporId, deskripsi: $deskripsi, bukti: $bukti, status: $status, keputusanAdmin: $keputusanAdmin, decidedAt: $decidedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeCopyWith<$Res> implements $DisputeCopyWith<$Res> {
  factory _$DisputeCopyWith(_Dispute value, $Res Function(_Dispute) _then) = __$DisputeCopyWithImpl;
@override @useResult
$Res call({
 String id, String rentalId, String pelaporId, String deskripsi, List<String> bukti, String status, String? keputusanAdmin, String? decidedAt, String createdAt
});




}
/// @nodoc
class __$DisputeCopyWithImpl<$Res>
    implements _$DisputeCopyWith<$Res> {
  __$DisputeCopyWithImpl(this._self, this._then);

  final _Dispute _self;
  final $Res Function(_Dispute) _then;

/// Create a copy of Dispute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rentalId = null,Object? pelaporId = null,Object? deskripsi = null,Object? bukti = null,Object? status = null,Object? keputusanAdmin = freezed,Object? decidedAt = freezed,Object? createdAt = null,}) {
  return _then(_Dispute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,pelaporId: null == pelaporId ? _self.pelaporId : pelaporId // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,bukti: null == bukti ? _self._bukti : bukti // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,keputusanAdmin: freezed == keputusanAdmin ? _self.keputusanAdmin : keputusanAdmin // ignore: cast_nullable_to_non_nullable
as String?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Notification {

 String get id; String get userId; String get judul; String get isi; String get tipe; String? get referenceId; bool get isRead; String get createdAt;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Notification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.judul, _this.judul) || other.judul == _this.judul)&&(identical(other.isi, _this.isi) || other.isi == _this.isi)&&(identical(other.tipe, _this.tipe) || other.tipe == _this.tipe)&&(identical(other.referenceId, _this.referenceId) || other.referenceId == _this.referenceId)&&(identical(other.isRead, _this.isRead) || other.isRead == _this.isRead)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Notification;
  return Object.hash(runtimeType,_this.id,_this.userId,_this.judul,_this.isi,_this.tipe,_this.referenceId,_this.isRead,_this.createdAt);
}

@override
String toString() {
  final _this = this as Notification;
  return 'Notification(id: ${_this.id}, userId: ${_this.userId}, judul: ${_this.judul}, isi: ${_this.isi}, tipe: ${_this.tipe}, referenceId: ${_this.referenceId}, isRead: ${_this.isRead}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String judul, String isi, String tipe, String? referenceId, bool isRead, String createdAt
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? judul = null,Object? isi = null,Object? tipe = null,Object? referenceId = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(Notification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String judul,  String isi,  String tipe,  String? referenceId,  bool isRead,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.userId,_that.judul,_that.isi,_that.tipe,_that.referenceId,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String judul,  String isi,  String tipe,  String? referenceId,  bool isRead,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.userId,_that.judul,_that.isi,_that.tipe,_that.referenceId,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String judul,  String isi,  String tipe,  String? referenceId,  bool isRead,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.userId,_that.judul,_that.isi,_that.tipe,_that.referenceId,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notification implements Notification {
  const _Notification({required this.id, required this.userId, required this.judul, required this.isi, required this.tipe, this.referenceId, required this.isRead, required this.createdAt});
  factory _Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String judul;
@override final  String isi;
@override final  String tipe;
@override final  String? referenceId;
@override final  bool isRead;
@override final  String createdAt;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isi, isi) || other.isi == isi)&&(identical(other.tipe, tipe) || other.tipe == tipe)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,userId,judul,isi,tipe,referenceId,isRead,createdAt);
}

@override
String toString() {
    return 'Notification(id: $id, userId: $userId, judul: $judul, isi: $isi, tipe: $tipe, referenceId: $referenceId, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String judul, String isi, String tipe, String? referenceId, bool isRead, String createdAt
});




}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? judul = null,Object? isi = null,Object? tipe = null,Object? referenceId = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_Notification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VendorDocument {

 String get id; String get vendorId; String get jenis; String get filePath; String get status; String get createdAt;
/// Create a copy of VendorDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorDocumentCopyWith<VendorDocument> get copyWith => _$VendorDocumentCopyWithImpl<VendorDocument>(this as VendorDocument, _$identity);

  /// Serializes this VendorDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VendorDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorDocument&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.jenis, _this.jenis) || other.jenis == _this.jenis)&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VendorDocument;
  return Object.hash(runtimeType,_this.id,_this.vendorId,_this.jenis,_this.filePath,_this.status,_this.createdAt);
}

@override
String toString() {
  final _this = this as VendorDocument;
  return 'VendorDocument(id: ${_this.id}, vendorId: ${_this.vendorId}, jenis: ${_this.jenis}, filePath: ${_this.filePath}, status: ${_this.status}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $VendorDocumentCopyWith<$Res>  {
  factory $VendorDocumentCopyWith(VendorDocument value, $Res Function(VendorDocument) _then) = _$VendorDocumentCopyWithImpl;
@useResult
$Res call({
 String id, String vendorId, String jenis, String filePath, String status, String createdAt
});




}
/// @nodoc
class _$VendorDocumentCopyWithImpl<$Res>
    implements $VendorDocumentCopyWith<$Res> {
  _$VendorDocumentCopyWithImpl(this._self, this._then);

  final VendorDocument _self;
  final $Res Function(VendorDocument) _then;

/// Create a copy of VendorDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorId = null,Object? jenis = null,Object? filePath = null,Object? status = null,Object? createdAt = null,}) {
  return _then(VendorDocument(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorDocument].
extension VendorDocumentPatterns on VendorDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorDocument value)  $default,){
final _that = this;
switch (_that) {
case _VendorDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorDocument value)?  $default,){
final _that = this;
switch (_that) {
case _VendorDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String vendorId,  String jenis,  String filePath,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorDocument() when $default != null:
return $default(_that.id,_that.vendorId,_that.jenis,_that.filePath,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String vendorId,  String jenis,  String filePath,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _VendorDocument():
return $default(_that.id,_that.vendorId,_that.jenis,_that.filePath,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String vendorId,  String jenis,  String filePath,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _VendorDocument() when $default != null:
return $default(_that.id,_that.vendorId,_that.jenis,_that.filePath,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorDocument implements VendorDocument {
  const _VendorDocument({required this.id, required this.vendorId, required this.jenis, required this.filePath, required this.status, required this.createdAt});
  factory _VendorDocument.fromJson(Map<String, dynamic> json) => _$VendorDocumentFromJson(json);

@override final  String id;
@override final  String vendorId;
@override final  String jenis;
@override final  String filePath;
@override final  String status;
@override final  String createdAt;

/// Create a copy of VendorDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorDocumentCopyWith<_VendorDocument> get copyWith => __$VendorDocumentCopyWithImpl<_VendorDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,vendorId,jenis,filePath,status,createdAt);
}

@override
String toString() {
    return 'VendorDocument(id: $id, vendorId: $vendorId, jenis: $jenis, filePath: $filePath, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$VendorDocumentCopyWith<$Res> implements $VendorDocumentCopyWith<$Res> {
  factory _$VendorDocumentCopyWith(_VendorDocument value, $Res Function(_VendorDocument) _then) = __$VendorDocumentCopyWithImpl;
@override @useResult
$Res call({
 String id, String vendorId, String jenis, String filePath, String status, String createdAt
});




}
/// @nodoc
class __$VendorDocumentCopyWithImpl<$Res>
    implements _$VendorDocumentCopyWith<$Res> {
  __$VendorDocumentCopyWithImpl(this._self, this._then);

  final _VendorDocument _self;
  final $Res Function(_VendorDocument) _then;

/// Create a copy of VendorDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorId = null,Object? jenis = null,Object? filePath = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_VendorDocument(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
