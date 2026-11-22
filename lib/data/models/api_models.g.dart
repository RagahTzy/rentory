// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      email: json['email'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
    };

_ApiUser _$ApiUserFromJson(Map<String, dynamic> json) => _ApiUser(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  firstName: json['firstName'] as String? ?? '',
  lastName: json['lastName'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  gender: json['gender'] as String?,
  age: (json['age'] as num?)?.toInt(),
  birthDate: json['birthDate'] as String?,
  image: json['image'] as String?,
  role: json['role'] as String? ?? 'user',
  address: json['address'] == null
      ? null
      : ApiAddress.fromJson(json['address'] as Map<String, dynamic>),
  company: json['company'] == null
      ? null
      : ApiCompany.fromJson(json['company'] as Map<String, dynamic>),
  university: json['university'] as String?,
);

Map<String, dynamic> _$ApiUserToJson(_ApiUser instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'phone': instance.phone,
  'gender': instance.gender,
  'age': instance.age,
  'birthDate': instance.birthDate,
  'image': instance.image,
  'role': instance.role,
  'address': instance.address,
  'company': instance.company,
  'university': instance.university,
};

_ApiAddress _$ApiAddressFromJson(Map<String, dynamic> json) => _ApiAddress(
  address: json['address'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  postalCode: json['postalCode'] as String?,
  country: json['country'] as String?,
);

Map<String, dynamic> _$ApiAddressToJson(_ApiAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

_ApiCompany _$ApiCompanyFromJson(Map<String, dynamic> json) => _ApiCompany(
  name: json['name'] as String?,
  department: json['department'] as String?,
  title: json['title'] as String?,
);

Map<String, dynamic> _$ApiCompanyToJson(_ApiCompany instance) =>
    <String, dynamic>{
      'name': instance.name,
      'department': instance.department,
      'title': instance.title,
    };

_ApiProduct _$ApiProductFromJson(Map<String, dynamic> json) => _ApiProduct(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String? ?? '',
  price: json['price'] as num? ?? 0,
  stock: (json['stock'] as num?)?.toInt() ?? 0,
  category: json['category'] as String? ?? '',
  brand: json['brand'] as String?,
  thumbnail: json['thumbnail'] as String?,
  rating: json['rating'] as num?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  availabilityStatus: json['availabilityStatus'] as String?,
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
);

Map<String, dynamic> _$ApiProductToJson(_ApiProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'category': instance.category,
      'brand': instance.brand,
      'thumbnail': instance.thumbnail,
      'rating': instance.rating,
      'images': instance.images,
      'availabilityStatus': instance.availabilityStatus,
      'reviews': instance.reviews,
    };

_ApiCategory _$ApiCategoryFromJson(Map<String, dynamic> json) =>
    _ApiCategory(slug: json['slug'] as String, name: json['name'] as String);

Map<String, dynamic> _$ApiCategoryToJson(_ApiCategory instance) =>
    <String, dynamic>{'slug': instance.slug, 'name': instance.name};

_ApiProductPage _$ApiProductPageFromJson(Map<String, dynamic> json) =>
    _ApiProductPage(
      products: (json['products'] as List<dynamic>)
          .map((e) => ApiProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$ApiProductPageToJson(_ApiProductPage instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
