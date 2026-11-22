// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String get id; String get vendorId; String get categoryId; String get nama; String get deskripsi; List<String> get foto; int? get hargaPerJam; int get hargaPerHari; int get hargaPerMinggu; int get stok; String get status; String? get aturanKhusus; double get ratingRata; int get totalReview; String get createdAt;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Product;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.vendorId, _this.vendorId) || other.vendorId == _this.vendorId)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.nama, _this.nama) || other.nama == _this.nama)&&(identical(other.deskripsi, _this.deskripsi) || other.deskripsi == _this.deskripsi)&&const DeepCollectionEquality().equals(other.foto, _this.foto)&&(identical(other.hargaPerJam, _this.hargaPerJam) || other.hargaPerJam == _this.hargaPerJam)&&(identical(other.hargaPerHari, _this.hargaPerHari) || other.hargaPerHari == _this.hargaPerHari)&&(identical(other.hargaPerMinggu, _this.hargaPerMinggu) || other.hargaPerMinggu == _this.hargaPerMinggu)&&(identical(other.stok, _this.stok) || other.stok == _this.stok)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.aturanKhusus, _this.aturanKhusus) || other.aturanKhusus == _this.aturanKhusus)&&(identical(other.ratingRata, _this.ratingRata) || other.ratingRata == _this.ratingRata)&&(identical(other.totalReview, _this.totalReview) || other.totalReview == _this.totalReview)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Product;
  return Object.hash(runtimeType,_this.id,_this.vendorId,_this.categoryId,_this.nama,_this.deskripsi,const DeepCollectionEquality().hash(_this.foto),_this.hargaPerJam,_this.hargaPerHari,_this.hargaPerMinggu,_this.stok,_this.status,_this.aturanKhusus,_this.ratingRata,_this.totalReview,_this.createdAt);
}

@override
String toString() {
  final _this = this as Product;
  return 'Product(id: ${_this.id}, vendorId: ${_this.vendorId}, categoryId: ${_this.categoryId}, nama: ${_this.nama}, deskripsi: ${_this.deskripsi}, foto: ${_this.foto}, hargaPerJam: ${_this.hargaPerJam}, hargaPerHari: ${_this.hargaPerHari}, hargaPerMinggu: ${_this.hargaPerMinggu}, stok: ${_this.stok}, status: ${_this.status}, aturanKhusus: ${_this.aturanKhusus}, ratingRata: ${_this.ratingRata}, totalReview: ${_this.totalReview}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String vendorId, String categoryId, String nama, String deskripsi, List<String> foto, int? hargaPerJam, int hargaPerHari, int hargaPerMinggu, int stok, String status, String? aturanKhusus, double ratingRata, int totalReview, String createdAt
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorId = null,Object? categoryId = null,Object? nama = null,Object? deskripsi = null,Object? foto = null,Object? hargaPerJam = freezed,Object? hargaPerHari = null,Object? hargaPerMinggu = null,Object? stok = null,Object? status = null,Object? aturanKhusus = freezed,Object? ratingRata = null,Object? totalReview = null,Object? createdAt = null,}) {
  return _then(Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,foto: null == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as List<String>,hargaPerJam: freezed == hargaPerJam ? _self.hargaPerJam : hargaPerJam // ignore: cast_nullable_to_non_nullable
as int?,hargaPerHari: null == hargaPerHari ? _self.hargaPerHari : hargaPerHari // ignore: cast_nullable_to_non_nullable
as int,hargaPerMinggu: null == hargaPerMinggu ? _self.hargaPerMinggu : hargaPerMinggu // ignore: cast_nullable_to_non_nullable
as int,stok: null == stok ? _self.stok : stok // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,aturanKhusus: freezed == aturanKhusus ? _self.aturanKhusus : aturanKhusus // ignore: cast_nullable_to_non_nullable
as String?,ratingRata: null == ratingRata ? _self.ratingRata : ratingRata // ignore: cast_nullable_to_non_nullable
as double,totalReview: null == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String vendorId,  String categoryId,  String nama,  String deskripsi,  List<String> foto,  int? hargaPerJam,  int hargaPerHari,  int hargaPerMinggu,  int stok,  String status,  String? aturanKhusus,  double ratingRata,  int totalReview,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.vendorId,_that.categoryId,_that.nama,_that.deskripsi,_that.foto,_that.hargaPerJam,_that.hargaPerHari,_that.hargaPerMinggu,_that.stok,_that.status,_that.aturanKhusus,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String vendorId,  String categoryId,  String nama,  String deskripsi,  List<String> foto,  int? hargaPerJam,  int hargaPerHari,  int hargaPerMinggu,  int stok,  String status,  String? aturanKhusus,  double ratingRata,  int totalReview,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.vendorId,_that.categoryId,_that.nama,_that.deskripsi,_that.foto,_that.hargaPerJam,_that.hargaPerHari,_that.hargaPerMinggu,_that.stok,_that.status,_that.aturanKhusus,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String vendorId,  String categoryId,  String nama,  String deskripsi,  List<String> foto,  int? hargaPerJam,  int hargaPerHari,  int hargaPerMinggu,  int stok,  String status,  String? aturanKhusus,  double ratingRata,  int totalReview,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.vendorId,_that.categoryId,_that.nama,_that.deskripsi,_that.foto,_that.hargaPerJam,_that.hargaPerHari,_that.hargaPerMinggu,_that.stok,_that.status,_that.aturanKhusus,_that.ratingRata,_that.totalReview,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, required this.vendorId, required this.categoryId, required this.nama, required this.deskripsi, required  List<String> foto, this.hargaPerJam, required this.hargaPerHari, required this.hargaPerMinggu, required this.stok, required this.status, this.aturanKhusus, required this.ratingRata, required this.totalReview, required this.createdAt}): _foto = foto;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String id;
@override final  String vendorId;
@override final  String categoryId;
@override final  String nama;
@override final  String deskripsi;
 final  List<String> _foto;
@override List<String> get foto {
  if (_foto is EqualUnmodifiableListView) return _foto;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foto);
}

@override final  int? hargaPerJam;
@override final  int hargaPerHari;
@override final  int hargaPerMinggu;
@override final  int stok;
@override final  String status;
@override final  String? aturanKhusus;
@override final  double ratingRata;
@override final  int totalReview;
@override final  String createdAt;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&const DeepCollectionEquality().equals(other.foto, _foto)&&(identical(other.hargaPerJam, hargaPerJam) || other.hargaPerJam == hargaPerJam)&&(identical(other.hargaPerHari, hargaPerHari) || other.hargaPerHari == hargaPerHari)&&(identical(other.hargaPerMinggu, hargaPerMinggu) || other.hargaPerMinggu == hargaPerMinggu)&&(identical(other.stok, stok) || other.stok == stok)&&(identical(other.status, status) || other.status == status)&&(identical(other.aturanKhusus, aturanKhusus) || other.aturanKhusus == aturanKhusus)&&(identical(other.ratingRata, ratingRata) || other.ratingRata == ratingRata)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,vendorId,categoryId,nama,deskripsi,const DeepCollectionEquality().hash(_foto),hargaPerJam,hargaPerHari,hargaPerMinggu,stok,status,aturanKhusus,ratingRata,totalReview,createdAt);
}

@override
String toString() {
    return 'Product(id: $id, vendorId: $vendorId, categoryId: $categoryId, nama: $nama, deskripsi: $deskripsi, foto: $foto, hargaPerJam: $hargaPerJam, hargaPerHari: $hargaPerHari, hargaPerMinggu: $hargaPerMinggu, stok: $stok, status: $status, aturanKhusus: $aturanKhusus, ratingRata: $ratingRata, totalReview: $totalReview, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String vendorId, String categoryId, String nama, String deskripsi, List<String> foto, int? hargaPerJam, int hargaPerHari, int hargaPerMinggu, int stok, String status, String? aturanKhusus, double ratingRata, int totalReview, String createdAt
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorId = null,Object? categoryId = null,Object? nama = null,Object? deskripsi = null,Object? foto = null,Object? hargaPerJam = freezed,Object? hargaPerHari = null,Object? hargaPerMinggu = null,Object? stok = null,Object? status = null,Object? aturanKhusus = freezed,Object? ratingRata = null,Object? totalReview = null,Object? createdAt = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,foto: null == foto ? _self._foto : foto // ignore: cast_nullable_to_non_nullable
as List<String>,hargaPerJam: freezed == hargaPerJam ? _self.hargaPerJam : hargaPerJam // ignore: cast_nullable_to_non_nullable
as int?,hargaPerHari: null == hargaPerHari ? _self.hargaPerHari : hargaPerHari // ignore: cast_nullable_to_non_nullable
as int,hargaPerMinggu: null == hargaPerMinggu ? _self.hargaPerMinggu : hargaPerMinggu // ignore: cast_nullable_to_non_nullable
as int,stok: null == stok ? _self.stok : stok // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,aturanKhusus: freezed == aturanKhusus ? _self.aturanKhusus : aturanKhusus // ignore: cast_nullable_to_non_nullable
as String?,ratingRata: null == ratingRata ? _self.ratingRata : ratingRata // ignore: cast_nullable_to_non_nullable
as double,totalReview: null == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Category {

 String get id; String get nama; String get icon; String get deskripsi;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Category;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.nama, _this.nama) || other.nama == _this.nama)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.deskripsi, _this.deskripsi) || other.deskripsi == _this.deskripsi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Category;
  return Object.hash(runtimeType,_this.id,_this.nama,_this.icon,_this.deskripsi);
}

@override
String toString() {
  final _this = this as Category;
  return 'Category(id: ${_this.id}, nama: ${_this.nama}, icon: ${_this.icon}, deskripsi: ${_this.deskripsi})';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, String nama, String icon, String deskripsi
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nama = null,Object? icon = null,Object? deskripsi = null,}) {
  return _then(Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nama,  String icon,  String deskripsi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.nama,_that.icon,_that.deskripsi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nama,  String icon,  String deskripsi)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.nama,_that.icon,_that.deskripsi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nama,  String icon,  String deskripsi)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.nama,_that.icon,_that.deskripsi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.nama, required this.icon, required this.deskripsi});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  String id;
@override final  String nama;
@override final  String icon;
@override final  String deskripsi;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,nama,icon,deskripsi);
}

@override
String toString() {
    return 'Category(id: $id, nama: $nama, icon: $icon, deskripsi: $deskripsi)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String nama, String icon, String deskripsi
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nama = null,Object? icon = null,Object? deskripsi = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,deskripsi: null == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
