// lib/data/models/api_models.dart
// ignore_for_file: invalid_annotation_target
//
// Model untuk response DummyJSON (https://dummyjson.com). Berbeda dengan data
// dummy lokal (snake_case), DummyJSON memakai camelCase, jadi `fieldRename`
// di-override ke `none` (build.yaml default-nya snake).
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_models.freezed.dart';
part 'api_models.g.dart';

/// Response POST /auth/login.
@freezed
abstract class LoginResponse with _$LoginResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory LoginResponse({
    required int id,
    required String username,
    required String accessToken,
    required String refreshToken,
    @Default('') String email,
    @Default('') String firstName,
    @Default('') String lastName,
    String? gender,
    String? image,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

/// Profil user dari GET /auth/me.
@freezed
abstract class ApiUser with _$ApiUser {
  const ApiUser._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiUser({
    required int id,
    required String username,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String phone,
    String? gender,
    int? age,
    String? birthDate,
    String? image,
    @Default('user') String role, // 'admin' | 'moderator' | 'user'
    ApiAddress? address,
    ApiCompany? company,
    String? university,
  }) = _ApiUser;

  factory ApiUser.fromJson(Map<String, dynamic> json) => _$ApiUserFromJson(json);

  String get fullName => '$firstName $lastName'.trim();
}

@freezed
abstract class ApiAddress with _$ApiAddress {
  const ApiAddress._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiAddress({
    String? address,
    String? city,
    String? state,
    String? postalCode,
    String? country,
  }) = _ApiAddress;

  factory ApiAddress.fromJson(Map<String, dynamic> json) => _$ApiAddressFromJson(json);

  String get formatted =>
      [address, city, state, postalCode, country].whereType<String>().where((s) => s.isNotEmpty).join(', ');
}

@freezed
abstract class ApiCompany with _$ApiCompany {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiCompany({
    String? name,
    String? department,
    String? title,
  }) = _ApiCompany;

  factory ApiCompany.fromJson(Map<String, dynamic> json) => _$ApiCompanyFromJson(json);
}

/// Produk dari endpoint /products DummyJSON.
@freezed
abstract class ApiProduct with _$ApiProduct {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiProduct({
    required int id,
    required String title,
    @Default('') String description,
    @Default(0) num price,
    @Default(0) int stock,
    @Default('') String category,
    String? brand,
    String? thumbnail,
    num? rating,
    @Default([]) List<String> images,
    String? availabilityStatus, // 'In Stock' | 'Low Stock' | 'Out of Stock'
    @Default([]) List<Map<String, dynamic>> reviews,
  }) = _ApiProduct;

  factory ApiProduct.fromJson(Map<String, dynamic> json) => _$ApiProductFromJson(json);
}

/// Kategori dari GET /products/categories.
@freezed
abstract class ApiCategory with _$ApiCategory {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiCategory({
    required String slug,
    required String name,
  }) = _ApiCategory;

  factory ApiCategory.fromJson(Map<String, dynamic> json) => _$ApiCategoryFromJson(json);
}

/// Response GET /products (berhalaman).
@freezed
abstract class ApiProductPage with _$ApiProductPage {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ApiProductPage({
    required List<ApiProduct> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ApiProductPage;

  factory ApiProductPage.fromJson(Map<String, dynamic> json) => _$ApiProductPageFromJson(json);
}
