// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as String?,
      token: json['token'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      role: json['role'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      v: json['v'] as int,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'role': instance.role,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'v': instance.v,
    };
