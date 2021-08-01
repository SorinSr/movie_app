library user;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/src/model/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder b) updates]) = _$User;

  factory User.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as User;

  User._();

  String get uid;

  String get username;

  String get email;

  String? get photoUrl;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<User> get serializer => _$userSerializer;
}