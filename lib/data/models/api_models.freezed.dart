// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 int get id; String get username; String get accessToken; String get refreshToken; String get email; String get firstName; String get lastName; String? get gender; String? get image;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LoginResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.image, _this.image) || other.image == _this.image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LoginResponse;
  return Object.hash(runtimeType,_this.id,_this.username,_this.accessToken,_this.refreshToken,_this.email,_this.firstName,_this.lastName,_this.gender,_this.image);
}

@override
String toString() {
  final _this = this as LoginResponse;
  return 'LoginResponse(id: ${_this.id}, username: ${_this.username}, accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, gender: ${_this.gender}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 int id, String username, String accessToken, String refreshToken, String email, String firstName, String lastName, String? gender, String? image
});




}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? accessToken = null,Object? refreshToken = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? gender = freezed,Object? image = freezed,}) {
  return _then(LoginResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  String accessToken,  String refreshToken,  String email,  String firstName,  String lastName,  String? gender,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.id,_that.username,_that.accessToken,_that.refreshToken,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  String accessToken,  String refreshToken,  String email,  String firstName,  String lastName,  String? gender,  String? image)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.id,_that.username,_that.accessToken,_that.refreshToken,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  String accessToken,  String refreshToken,  String email,  String firstName,  String lastName,  String? gender,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.id,_that.username,_that.accessToken,_that.refreshToken,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _LoginResponse implements LoginResponse {
  const _LoginResponse({required this.id, required this.username, required this.accessToken, required this.refreshToken, this.email = '', this.firstName = '', this.lastName = '', this.gender, this.image});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  int id;
@override final  String username;
@override final  String accessToken;
@override final  String refreshToken;
@override@JsonKey() final  String email;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override final  String? gender;
@override final  String? image;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,username,accessToken,refreshToken,email,firstName,lastName,gender,image);
}

@override
String toString() {
    return 'LoginResponse(id: $id, username: $username, accessToken: $accessToken, refreshToken: $refreshToken, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, String accessToken, String refreshToken, String email, String firstName, String lastName, String? gender, String? image
});




}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? accessToken = null,Object? refreshToken = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? gender = freezed,Object? image = freezed,}) {
  return _then(_LoginResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApiUser {

 int get id; String get username; String get firstName; String get lastName; String get email; String get phone; String? get gender; int? get age; String? get birthDate; String? get image; String get role; ApiAddress? get address; ApiCompany? get company; String? get university;
/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiUserCopyWith<ApiUser> get copyWith => _$ApiUserCopyWithImpl<ApiUser>(this as ApiUser, _$identity);

  /// Serializes this ApiUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiUser;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiUser&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.age, _this.age) || other.age == _this.age)&&(identical(other.birthDate, _this.birthDate) || other.birthDate == _this.birthDate)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.university, _this.university) || other.university == _this.university));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiUser;
  return Object.hash(runtimeType,_this.id,_this.username,_this.firstName,_this.lastName,_this.email,_this.phone,_this.gender,_this.age,_this.birthDate,_this.image,_this.role,_this.address,_this.company,_this.university);
}

@override
String toString() {
  final _this = this as ApiUser;
  return 'ApiUser(id: ${_this.id}, username: ${_this.username}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, email: ${_this.email}, phone: ${_this.phone}, gender: ${_this.gender}, age: ${_this.age}, birthDate: ${_this.birthDate}, image: ${_this.image}, role: ${_this.role}, address: ${_this.address}, company: ${_this.company}, university: ${_this.university})';
}


}

/// @nodoc
abstract mixin class $ApiUserCopyWith<$Res>  {
  factory $ApiUserCopyWith(ApiUser value, $Res Function(ApiUser) _then) = _$ApiUserCopyWithImpl;
@useResult
$Res call({
 int id, String username, String firstName, String lastName, String email, String phone, String? gender, int? age, String? birthDate, String? image, String role, ApiAddress? address, ApiCompany? company, String? university
});


$ApiAddressCopyWith<$Res>? get address;$ApiCompanyCopyWith<$Res>? get company;

}
/// @nodoc
class _$ApiUserCopyWithImpl<$Res>
    implements $ApiUserCopyWith<$Res> {
  _$ApiUserCopyWithImpl(this._self, this._then);

  final ApiUser _self;
  final $Res Function(ApiUser) _then;

/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? phone = null,Object? gender = freezed,Object? age = freezed,Object? birthDate = freezed,Object? image = freezed,Object? role = null,Object? address = freezed,Object? company = freezed,Object? university = freezed,}) {
  return _then(ApiUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ApiAddress?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as ApiCompany?,university: freezed == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $ApiAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiCompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $ApiCompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiUser].
extension ApiUserPatterns on ApiUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiUser value)  $default,){
final _that = this;
switch (_that) {
case _ApiUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiUser value)?  $default,){
final _that = this;
switch (_that) {
case _ApiUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  String firstName,  String lastName,  String email,  String phone,  String? gender,  int? age,  String? birthDate,  String? image,  String role,  ApiAddress? address,  ApiCompany? company,  String? university)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiUser() when $default != null:
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.phone,_that.gender,_that.age,_that.birthDate,_that.image,_that.role,_that.address,_that.company,_that.university);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  String firstName,  String lastName,  String email,  String phone,  String? gender,  int? age,  String? birthDate,  String? image,  String role,  ApiAddress? address,  ApiCompany? company,  String? university)  $default,) {final _that = this;
switch (_that) {
case _ApiUser():
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.phone,_that.gender,_that.age,_that.birthDate,_that.image,_that.role,_that.address,_that.company,_that.university);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  String firstName,  String lastName,  String email,  String phone,  String? gender,  int? age,  String? birthDate,  String? image,  String role,  ApiAddress? address,  ApiCompany? company,  String? university)?  $default,) {final _that = this;
switch (_that) {
case _ApiUser() when $default != null:
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.phone,_that.gender,_that.age,_that.birthDate,_that.image,_that.role,_that.address,_that.company,_that.university);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiUser extends ApiUser {
  const _ApiUser({required this.id, required this.username, this.firstName = '', this.lastName = '', this.email = '', this.phone = '', this.gender, this.age, this.birthDate, this.image, this.role = 'user', this.address, this.company, this.university}): super._();
  factory _ApiUser.fromJson(Map<String, dynamic> json) => _$ApiUserFromJson(json);

@override final  int id;
@override final  String username;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String email;
@override@JsonKey() final  String phone;
@override final  String? gender;
@override final  int? age;
@override final  String? birthDate;
@override final  String? image;
@override@JsonKey() final  String role;
@override final  ApiAddress? address;
@override final  ApiCompany? company;
@override final  String? university;

/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiUserCopyWith<_ApiUser> get copyWith => __$ApiUserCopyWithImpl<_ApiUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiUserToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiUser&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.role, role) || other.role == role)&&(identical(other.address, address) || other.address == address)&&(identical(other.company, company) || other.company == company)&&(identical(other.university, university) || other.university == university));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,username,firstName,lastName,email,phone,gender,age,birthDate,image,role,address,company,university);
}

@override
String toString() {
    return 'ApiUser(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, gender: $gender, age: $age, birthDate: $birthDate, image: $image, role: $role, address: $address, company: $company, university: $university)';
}


}

/// @nodoc
abstract mixin class _$ApiUserCopyWith<$Res> implements $ApiUserCopyWith<$Res> {
  factory _$ApiUserCopyWith(_ApiUser value, $Res Function(_ApiUser) _then) = __$ApiUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, String firstName, String lastName, String email, String phone, String? gender, int? age, String? birthDate, String? image, String role, ApiAddress? address, ApiCompany? company, String? university
});


@override $ApiAddressCopyWith<$Res>? get address;@override $ApiCompanyCopyWith<$Res>? get company;

}
/// @nodoc
class __$ApiUserCopyWithImpl<$Res>
    implements _$ApiUserCopyWith<$Res> {
  __$ApiUserCopyWithImpl(this._self, this._then);

  final _ApiUser _self;
  final $Res Function(_ApiUser) _then;

/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? phone = null,Object? gender = freezed,Object? age = freezed,Object? birthDate = freezed,Object? image = freezed,Object? role = null,Object? address = freezed,Object? company = freezed,Object? university = freezed,}) {
  return _then(_ApiUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ApiAddress?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as ApiCompany?,university: freezed == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $ApiAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of ApiUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiCompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $ApiCompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// @nodoc
mixin _$ApiAddress {

 String? get address; String? get city; String? get state; String? get postalCode; String? get country;
/// Create a copy of ApiAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiAddressCopyWith<ApiAddress> get copyWith => _$ApiAddressCopyWithImpl<ApiAddress>(this as ApiAddress, _$identity);

  /// Serializes this ApiAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiAddress&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.country, _this.country) || other.country == _this.country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiAddress;
  return Object.hash(runtimeType,_this.address,_this.city,_this.state,_this.postalCode,_this.country);
}

@override
String toString() {
  final _this = this as ApiAddress;
  return 'ApiAddress(address: ${_this.address}, city: ${_this.city}, state: ${_this.state}, postalCode: ${_this.postalCode}, country: ${_this.country})';
}


}

/// @nodoc
abstract mixin class $ApiAddressCopyWith<$Res>  {
  factory $ApiAddressCopyWith(ApiAddress value, $Res Function(ApiAddress) _then) = _$ApiAddressCopyWithImpl;
@useResult
$Res call({
 String? address, String? city, String? state, String? postalCode, String? country
});




}
/// @nodoc
class _$ApiAddressCopyWithImpl<$Res>
    implements $ApiAddressCopyWith<$Res> {
  _$ApiAddressCopyWithImpl(this._self, this._then);

  final ApiAddress _self;
  final $Res Function(ApiAddress) _then;

/// Create a copy of ApiAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? postalCode = freezed,Object? country = freezed,}) {
  return _then(ApiAddress(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiAddress].
extension ApiAddressPatterns on ApiAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiAddress value)  $default,){
final _that = this;
switch (_that) {
case _ApiAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiAddress value)?  $default,){
final _that = this;
switch (_that) {
case _ApiAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  String? city,  String? state,  String? postalCode,  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiAddress() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.postalCode,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  String? city,  String? state,  String? postalCode,  String? country)  $default,) {final _that = this;
switch (_that) {
case _ApiAddress():
return $default(_that.address,_that.city,_that.state,_that.postalCode,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  String? city,  String? state,  String? postalCode,  String? country)?  $default,) {final _that = this;
switch (_that) {
case _ApiAddress() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.postalCode,_that.country);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiAddress extends ApiAddress {
  const _ApiAddress({this.address, this.city, this.state, this.postalCode, this.country}): super._();
  factory _ApiAddress.fromJson(Map<String, dynamic> json) => _$ApiAddressFromJson(json);

@override final  String? address;
@override final  String? city;
@override final  String? state;
@override final  String? postalCode;
@override final  String? country;

/// Create a copy of ApiAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiAddressCopyWith<_ApiAddress> get copyWith => __$ApiAddressCopyWithImpl<_ApiAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiAddress&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,address,city,state,postalCode,country);
}

@override
String toString() {
    return 'ApiAddress(address: $address, city: $city, state: $state, postalCode: $postalCode, country: $country)';
}


}

/// @nodoc
abstract mixin class _$ApiAddressCopyWith<$Res> implements $ApiAddressCopyWith<$Res> {
  factory _$ApiAddressCopyWith(_ApiAddress value, $Res Function(_ApiAddress) _then) = __$ApiAddressCopyWithImpl;
@override @useResult
$Res call({
 String? address, String? city, String? state, String? postalCode, String? country
});




}
/// @nodoc
class __$ApiAddressCopyWithImpl<$Res>
    implements _$ApiAddressCopyWith<$Res> {
  __$ApiAddressCopyWithImpl(this._self, this._then);

  final _ApiAddress _self;
  final $Res Function(_ApiAddress) _then;

/// Create a copy of ApiAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? postalCode = freezed,Object? country = freezed,}) {
  return _then(_ApiAddress(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApiCompany {

 String? get name; String? get department; String? get title;
/// Create a copy of ApiCompany
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiCompanyCopyWith<ApiCompany> get copyWith => _$ApiCompanyCopyWithImpl<ApiCompany>(this as ApiCompany, _$identity);

  /// Serializes this ApiCompany to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiCompany;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiCompany&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.title, _this.title) || other.title == _this.title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiCompany;
  return Object.hash(runtimeType,_this.name,_this.department,_this.title);
}

@override
String toString() {
  final _this = this as ApiCompany;
  return 'ApiCompany(name: ${_this.name}, department: ${_this.department}, title: ${_this.title})';
}


}

/// @nodoc
abstract mixin class $ApiCompanyCopyWith<$Res>  {
  factory $ApiCompanyCopyWith(ApiCompany value, $Res Function(ApiCompany) _then) = _$ApiCompanyCopyWithImpl;
@useResult
$Res call({
 String? name, String? department, String? title
});




}
/// @nodoc
class _$ApiCompanyCopyWithImpl<$Res>
    implements $ApiCompanyCopyWith<$Res> {
  _$ApiCompanyCopyWithImpl(this._self, this._then);

  final ApiCompany _self;
  final $Res Function(ApiCompany) _then;

/// Create a copy of ApiCompany
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? department = freezed,Object? title = freezed,}) {
  return _then(ApiCompany(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiCompany].
extension ApiCompanyPatterns on ApiCompany {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiCompany value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiCompany() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiCompany value)  $default,){
final _that = this;
switch (_that) {
case _ApiCompany():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiCompany value)?  $default,){
final _that = this;
switch (_that) {
case _ApiCompany() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? department,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiCompany() when $default != null:
return $default(_that.name,_that.department,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? department,  String? title)  $default,) {final _that = this;
switch (_that) {
case _ApiCompany():
return $default(_that.name,_that.department,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? department,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _ApiCompany() when $default != null:
return $default(_that.name,_that.department,_that.title);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiCompany implements ApiCompany {
  const _ApiCompany({this.name, this.department, this.title});
  factory _ApiCompany.fromJson(Map<String, dynamic> json) => _$ApiCompanyFromJson(json);

@override final  String? name;
@override final  String? department;
@override final  String? title;

/// Create a copy of ApiCompany
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiCompanyCopyWith<_ApiCompany> get copyWith => __$ApiCompanyCopyWithImpl<_ApiCompany>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiCompanyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiCompany&&(identical(other.name, name) || other.name == name)&&(identical(other.department, department) || other.department == department)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,department,title);
}

@override
String toString() {
    return 'ApiCompany(name: $name, department: $department, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ApiCompanyCopyWith<$Res> implements $ApiCompanyCopyWith<$Res> {
  factory _$ApiCompanyCopyWith(_ApiCompany value, $Res Function(_ApiCompany) _then) = __$ApiCompanyCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? department, String? title
});




}
/// @nodoc
class __$ApiCompanyCopyWithImpl<$Res>
    implements _$ApiCompanyCopyWith<$Res> {
  __$ApiCompanyCopyWithImpl(this._self, this._then);

  final _ApiCompany _self;
  final $Res Function(_ApiCompany) _then;

/// Create a copy of ApiCompany
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? department = freezed,Object? title = freezed,}) {
  return _then(_ApiCompany(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApiProduct {

 int get id; String get title; String get description; num get price; int get stock; String get category; String? get brand; String? get thumbnail; num? get rating; List<String> get images; String? get availabilityStatus; List<Map<String, dynamic>> get reviews;
/// Create a copy of ApiProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiProductCopyWith<ApiProduct> get copyWith => _$ApiProductCopyWithImpl<ApiProduct>(this as ApiProduct, _$identity);

  /// Serializes this ApiProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiProduct;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiProduct&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.stock, _this.stock) || other.stock == _this.stock)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&const DeepCollectionEquality().equals(other.images, _this.images)&&(identical(other.availabilityStatus, _this.availabilityStatus) || other.availabilityStatus == _this.availabilityStatus)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiProduct;
  return Object.hash(runtimeType,_this.id,_this.title,_this.description,_this.price,_this.stock,_this.category,_this.brand,_this.thumbnail,_this.rating,const DeepCollectionEquality().hash(_this.images),_this.availabilityStatus,const DeepCollectionEquality().hash(_this.reviews));
}

@override
String toString() {
  final _this = this as ApiProduct;
  return 'ApiProduct(id: ${_this.id}, title: ${_this.title}, description: ${_this.description}, price: ${_this.price}, stock: ${_this.stock}, category: ${_this.category}, brand: ${_this.brand}, thumbnail: ${_this.thumbnail}, rating: ${_this.rating}, images: ${_this.images}, availabilityStatus: ${_this.availabilityStatus}, reviews: ${_this.reviews})';
}


}

/// @nodoc
abstract mixin class $ApiProductCopyWith<$Res>  {
  factory $ApiProductCopyWith(ApiProduct value, $Res Function(ApiProduct) _then) = _$ApiProductCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, num price, int stock, String category, String? brand, String? thumbnail, num? rating, List<String> images, String? availabilityStatus, List<Map<String, dynamic>> reviews
});




}
/// @nodoc
class _$ApiProductCopyWithImpl<$Res>
    implements $ApiProductCopyWith<$Res> {
  _$ApiProductCopyWithImpl(this._self, this._then);

  final ApiProduct _self;
  final $Res Function(ApiProduct) _then;

/// Create a copy of ApiProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? stock = null,Object? category = null,Object? brand = freezed,Object? thumbnail = freezed,Object? rating = freezed,Object? images = null,Object? availabilityStatus = freezed,Object? reviews = null,}) {
  return _then(ApiProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,availabilityStatus: freezed == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String?,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiProduct].
extension ApiProductPatterns on ApiProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiProduct value)  $default,){
final _that = this;
switch (_that) {
case _ApiProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiProduct value)?  $default,){
final _that = this;
switch (_that) {
case _ApiProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  num price,  int stock,  String category,  String? brand,  String? thumbnail,  num? rating,  List<String> images,  String? availabilityStatus,  List<Map<String, dynamic>> reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiProduct() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.stock,_that.category,_that.brand,_that.thumbnail,_that.rating,_that.images,_that.availabilityStatus,_that.reviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  num price,  int stock,  String category,  String? brand,  String? thumbnail,  num? rating,  List<String> images,  String? availabilityStatus,  List<Map<String, dynamic>> reviews)  $default,) {final _that = this;
switch (_that) {
case _ApiProduct():
return $default(_that.id,_that.title,_that.description,_that.price,_that.stock,_that.category,_that.brand,_that.thumbnail,_that.rating,_that.images,_that.availabilityStatus,_that.reviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  num price,  int stock,  String category,  String? brand,  String? thumbnail,  num? rating,  List<String> images,  String? availabilityStatus,  List<Map<String, dynamic>> reviews)?  $default,) {final _that = this;
switch (_that) {
case _ApiProduct() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.stock,_that.category,_that.brand,_that.thumbnail,_that.rating,_that.images,_that.availabilityStatus,_that.reviews);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiProduct implements ApiProduct {
  const _ApiProduct({required this.id, required this.title, this.description = '', this.price = 0, this.stock = 0, this.category = '', this.brand, this.thumbnail, this.rating,  List<String> images = const [], this.availabilityStatus,  List<Map<String, dynamic>> reviews = const []}): _images = images,_reviews = reviews;
  factory _ApiProduct.fromJson(Map<String, dynamic> json) => _$ApiProductFromJson(json);

@override final  int id;
@override final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  num price;
@override@JsonKey() final  int stock;
@override@JsonKey() final  String category;
@override final  String? brand;
@override final  String? thumbnail;
@override final  num? rating;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String? availabilityStatus;
 final  List<Map<String, dynamic>> _reviews;
@override@JsonKey() List<Map<String, dynamic>> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of ApiProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiProductCopyWith<_ApiProduct> get copyWith => __$ApiProductCopyWithImpl<_ApiProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.images, _images)&&(identical(other.availabilityStatus, availabilityStatus) || other.availabilityStatus == availabilityStatus)&&const DeepCollectionEquality().equals(other.reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,description,price,stock,category,brand,thumbnail,rating,const DeepCollectionEquality().hash(_images),availabilityStatus,const DeepCollectionEquality().hash(_reviews));
}

@override
String toString() {
    return 'ApiProduct(id: $id, title: $title, description: $description, price: $price, stock: $stock, category: $category, brand: $brand, thumbnail: $thumbnail, rating: $rating, images: $images, availabilityStatus: $availabilityStatus, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$ApiProductCopyWith<$Res> implements $ApiProductCopyWith<$Res> {
  factory _$ApiProductCopyWith(_ApiProduct value, $Res Function(_ApiProduct) _then) = __$ApiProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, num price, int stock, String category, String? brand, String? thumbnail, num? rating, List<String> images, String? availabilityStatus, List<Map<String, dynamic>> reviews
});




}
/// @nodoc
class __$ApiProductCopyWithImpl<$Res>
    implements _$ApiProductCopyWith<$Res> {
  __$ApiProductCopyWithImpl(this._self, this._then);

  final _ApiProduct _self;
  final $Res Function(_ApiProduct) _then;

/// Create a copy of ApiProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? stock = null,Object? category = null,Object? brand = freezed,Object? thumbnail = freezed,Object? rating = freezed,Object? images = null,Object? availabilityStatus = freezed,Object? reviews = null,}) {
  return _then(_ApiProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,availabilityStatus: freezed == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String?,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}


/// @nodoc
mixin _$ApiCategory {

 String get slug; String get name;
/// Create a copy of ApiCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiCategoryCopyWith<ApiCategory> get copyWith => _$ApiCategoryCopyWithImpl<ApiCategory>(this as ApiCategory, _$identity);

  /// Serializes this ApiCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiCategory&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiCategory;
  return Object.hash(runtimeType,_this.slug,_this.name);
}

@override
String toString() {
  final _this = this as ApiCategory;
  return 'ApiCategory(slug: ${_this.slug}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $ApiCategoryCopyWith<$Res>  {
  factory $ApiCategoryCopyWith(ApiCategory value, $Res Function(ApiCategory) _then) = _$ApiCategoryCopyWithImpl;
@useResult
$Res call({
 String slug, String name
});




}
/// @nodoc
class _$ApiCategoryCopyWithImpl<$Res>
    implements $ApiCategoryCopyWith<$Res> {
  _$ApiCategoryCopyWithImpl(this._self, this._then);

  final ApiCategory _self;
  final $Res Function(ApiCategory) _then;

/// Create a copy of ApiCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,}) {
  return _then(ApiCategory(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiCategory].
extension ApiCategoryPatterns on ApiCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiCategory value)  $default,){
final _that = this;
switch (_that) {
case _ApiCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ApiCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiCategory() when $default != null:
return $default(_that.slug,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name)  $default,) {final _that = this;
switch (_that) {
case _ApiCategory():
return $default(_that.slug,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ApiCategory() when $default != null:
return $default(_that.slug,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiCategory implements ApiCategory {
  const _ApiCategory({required this.slug, required this.name});
  factory _ApiCategory.fromJson(Map<String, dynamic> json) => _$ApiCategoryFromJson(json);

@override final  String slug;
@override final  String name;

/// Create a copy of ApiCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiCategoryCopyWith<_ApiCategory> get copyWith => __$ApiCategoryCopyWithImpl<_ApiCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiCategory&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,slug,name);
}

@override
String toString() {
    return 'ApiCategory(slug: $slug, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ApiCategoryCopyWith<$Res> implements $ApiCategoryCopyWith<$Res> {
  factory _$ApiCategoryCopyWith(_ApiCategory value, $Res Function(_ApiCategory) _then) = __$ApiCategoryCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name
});




}
/// @nodoc
class __$ApiCategoryCopyWithImpl<$Res>
    implements _$ApiCategoryCopyWith<$Res> {
  __$ApiCategoryCopyWithImpl(this._self, this._then);

  final _ApiCategory _self;
  final $Res Function(_ApiCategory) _then;

/// Create a copy of ApiCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,}) {
  return _then(_ApiCategory(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ApiProductPage {

 List<ApiProduct> get products; int get total; int get skip; int get limit;
/// Create a copy of ApiProductPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiProductPageCopyWith<ApiProductPage> get copyWith => _$ApiProductPageCopyWithImpl<ApiProductPage>(this as ApiProductPage, _$identity);

  /// Serializes this ApiProductPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ApiProductPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiProductPage&&const DeepCollectionEquality().equals(other.products, _this.products)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.skip, _this.skip) || other.skip == _this.skip)&&(identical(other.limit, _this.limit) || other.limit == _this.limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ApiProductPage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.products),_this.total,_this.skip,_this.limit);
}

@override
String toString() {
  final _this = this as ApiProductPage;
  return 'ApiProductPage(products: ${_this.products}, total: ${_this.total}, skip: ${_this.skip}, limit: ${_this.limit})';
}


}

/// @nodoc
abstract mixin class $ApiProductPageCopyWith<$Res>  {
  factory $ApiProductPageCopyWith(ApiProductPage value, $Res Function(ApiProductPage) _then) = _$ApiProductPageCopyWithImpl;
@useResult
$Res call({
 List<ApiProduct> products, int total, int skip, int limit
});




}
/// @nodoc
class _$ApiProductPageCopyWithImpl<$Res>
    implements $ApiProductPageCopyWith<$Res> {
  _$ApiProductPageCopyWithImpl(this._self, this._then);

  final ApiProductPage _self;
  final $Res Function(ApiProductPage) _then;

/// Create a copy of ApiProductPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(ApiProductPage(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ApiProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiProductPage].
extension ApiProductPagePatterns on ApiProductPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiProductPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiProductPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiProductPage value)  $default,){
final _that = this;
switch (_that) {
case _ApiProductPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiProductPage value)?  $default,){
final _that = this;
switch (_that) {
case _ApiProductPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ApiProduct> products,  int total,  int skip,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiProductPage() when $default != null:
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ApiProduct> products,  int total,  int skip,  int limit)  $default,) {final _that = this;
switch (_that) {
case _ApiProductPage():
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ApiProduct> products,  int total,  int skip,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _ApiProductPage() when $default != null:
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ApiProductPage implements ApiProductPage {
  const _ApiProductPage({required  List<ApiProduct> products, required this.total, required this.skip, required this.limit}): _products = products;
  factory _ApiProductPage.fromJson(Map<String, dynamic> json) => _$ApiProductPageFromJson(json);

 final  List<ApiProduct> _products;
@override List<ApiProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int total;
@override final  int skip;
@override final  int limit;

/// Create a copy of ApiProductPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiProductPageCopyWith<_ApiProductPage> get copyWith => __$ApiProductPageCopyWithImpl<_ApiProductPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiProductPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiProductPage&&const DeepCollectionEquality().equals(other.products, _products)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),total,skip,limit);
}

@override
String toString() {
    return 'ApiProductPage(products: $products, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ApiProductPageCopyWith<$Res> implements $ApiProductPageCopyWith<$Res> {
  factory _$ApiProductPageCopyWith(_ApiProductPage value, $Res Function(_ApiProductPage) _then) = __$ApiProductPageCopyWithImpl;
@override @useResult
$Res call({
 List<ApiProduct> products, int total, int skip, int limit
});




}
/// @nodoc
class __$ApiProductPageCopyWithImpl<$Res>
    implements _$ApiProductPageCopyWith<$Res> {
  __$ApiProductPageCopyWithImpl(this._self, this._then);

  final _ApiProductPage _self;
  final $Res Function(_ApiProductPage) _then;

/// Create a copy of ApiProductPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_ApiProductPage(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ApiProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
