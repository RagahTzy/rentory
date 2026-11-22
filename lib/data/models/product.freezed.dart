// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<String> get foto => throw _privateConstructorUsedError;
  int? get hargaPerJam => throw _privateConstructorUsedError;
  int get hargaPerHari => throw _privateConstructorUsedError;
  int get hargaPerMinggu => throw _privateConstructorUsedError;
  int get stok => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'tersedia' | 'disewa' | 'dibooking' | 'maintenance' | 'nonaktif'
  String? get aturanKhusus => throw _privateConstructorUsedError;
  double get ratingRata => throw _privateConstructorUsedError;
  int get totalReview => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String vendorId,
      String categoryId,
      String nama,
      String deskripsi,
      List<String> foto,
      int? hargaPerJam,
      int hargaPerHari,
      int hargaPerMinggu,
      int stok,
      String status,
      String? aturanKhusus,
      double ratingRata,
      int totalReview,
      String createdAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? categoryId = null,
    Object? nama = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? hargaPerJam = freezed,
    Object? hargaPerHari = null,
    Object? hargaPerMinggu = null,
    Object? stok = null,
    Object? status = null,
    Object? aturanKhusus = freezed,
    Object? ratingRata = null,
    Object? totalReview = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hargaPerJam: freezed == hargaPerJam
          ? _value.hargaPerJam
          : hargaPerJam // ignore: cast_nullable_to_non_nullable
              as int?,
      hargaPerHari: null == hargaPerHari
          ? _value.hargaPerHari
          : hargaPerHari // ignore: cast_nullable_to_non_nullable
              as int,
      hargaPerMinggu: null == hargaPerMinggu
          ? _value.hargaPerMinggu
          : hargaPerMinggu // ignore: cast_nullable_to_non_nullable
              as int,
      stok: null == stok
          ? _value.stok
          : stok // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      aturanKhusus: freezed == aturanKhusus
          ? _value.aturanKhusus
          : aturanKhusus // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String vendorId,
      String categoryId,
      String nama,
      String deskripsi,
      List<String> foto,
      int? hargaPerJam,
      int hargaPerHari,
      int hargaPerMinggu,
      int stok,
      String status,
      String? aturanKhusus,
      double ratingRata,
      int totalReview,
      String createdAt});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? categoryId = null,
    Object? nama = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? hargaPerJam = freezed,
    Object? hargaPerHari = null,
    Object? hargaPerMinggu = null,
    Object? stok = null,
    Object? status = null,
    Object? aturanKhusus = freezed,
    Object? ratingRata = null,
    Object? totalReview = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value._foto
          : foto // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hargaPerJam: freezed == hargaPerJam
          ? _value.hargaPerJam
          : hargaPerJam // ignore: cast_nullable_to_non_nullable
              as int?,
      hargaPerHari: null == hargaPerHari
          ? _value.hargaPerHari
          : hargaPerHari // ignore: cast_nullable_to_non_nullable
              as int,
      hargaPerMinggu: null == hargaPerMinggu
          ? _value.hargaPerMinggu
          : hargaPerMinggu // ignore: cast_nullable_to_non_nullable
              as int,
      stok: null == stok
          ? _value.stok
          : stok // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      aturanKhusus: freezed == aturanKhusus
          ? _value.aturanKhusus
          : aturanKhusus // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.vendorId,
      required this.categoryId,
      required this.nama,
      required this.deskripsi,
      required final List<String> foto,
      this.hargaPerJam,
      required this.hargaPerHari,
      required this.hargaPerMinggu,
      required this.stok,
      required this.status,
      this.aturanKhusus,
      required this.ratingRata,
      required this.totalReview,
      required this.createdAt})
      : _foto = foto;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String vendorId;
  @override
  final String categoryId;
  @override
  final String nama;
  @override
  final String deskripsi;
  final List<String> _foto;
  @override
  List<String> get foto {
    if (_foto is EqualUnmodifiableListView) return _foto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foto);
  }

  @override
  final int? hargaPerJam;
  @override
  final int hargaPerHari;
  @override
  final int hargaPerMinggu;
  @override
  final int stok;
  @override
  final String status;
// 'tersedia' | 'disewa' | 'dibooking' | 'maintenance' | 'nonaktif'
  @override
  final String? aturanKhusus;
  @override
  final double ratingRata;
  @override
  final int totalReview;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'Product(id: $id, vendorId: $vendorId, categoryId: $categoryId, nama: $nama, deskripsi: $deskripsi, foto: $foto, hargaPerJam: $hargaPerJam, hargaPerHari: $hargaPerHari, hargaPerMinggu: $hargaPerMinggu, stok: $stok, status: $status, aturanKhusus: $aturanKhusus, ratingRata: $ratingRata, totalReview: $totalReview, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality().equals(other._foto, _foto) &&
            (identical(other.hargaPerJam, hargaPerJam) ||
                other.hargaPerJam == hargaPerJam) &&
            (identical(other.hargaPerHari, hargaPerHari) ||
                other.hargaPerHari == hargaPerHari) &&
            (identical(other.hargaPerMinggu, hargaPerMinggu) ||
                other.hargaPerMinggu == hargaPerMinggu) &&
            (identical(other.stok, stok) || other.stok == stok) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.aturanKhusus, aturanKhusus) ||
                other.aturanKhusus == aturanKhusus) &&
            (identical(other.ratingRata, ratingRata) ||
                other.ratingRata == ratingRata) &&
            (identical(other.totalReview, totalReview) ||
                other.totalReview == totalReview) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      vendorId,
      categoryId,
      nama,
      deskripsi,
      const DeepCollectionEquality().hash(_foto),
      hargaPerJam,
      hargaPerHari,
      hargaPerMinggu,
      stok,
      status,
      aturanKhusus,
      ratingRata,
      totalReview,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String vendorId,
      required final String categoryId,
      required final String nama,
      required final String deskripsi,
      required final List<String> foto,
      final int? hargaPerJam,
      required final int hargaPerHari,
      required final int hargaPerMinggu,
      required final int stok,
      required final String status,
      final String? aturanKhusus,
      required final double ratingRata,
      required final int totalReview,
      required final String createdAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get vendorId;
  @override
  String get categoryId;
  @override
  String get nama;
  @override
  String get deskripsi;
  @override
  List<String> get foto;
  @override
  int? get hargaPerJam;
  @override
  int get hargaPerHari;
  @override
  int get hargaPerMinggu;
  @override
  int get stok;
  @override
  String get status;
  @override // 'tersedia' | 'disewa' | 'dibooking' | 'maintenance' | 'nonaktif'
  String? get aturanKhusus;
  @override
  double get ratingRata;
  @override
  int get totalReview;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String nama, String icon, String deskripsi});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? icon = null,
    Object? deskripsi = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nama, String icon, String deskripsi});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? icon = null,
    Object? deskripsi = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id,
      required this.nama,
      required this.icon,
      required this.deskripsi});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String icon;
  @override
  final String deskripsi;

  @override
  String toString() {
    return 'Category(id: $id, nama: $nama, icon: $icon, deskripsi: $deskripsi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, icon, deskripsi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String id,
      required final String nama,
      required final String icon,
      required final String deskripsi}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get icon;
  @override
  String get deskripsi;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
