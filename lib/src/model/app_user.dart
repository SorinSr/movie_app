library app_user;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/src/model/serializers.dart';

part 'app_user.g.dart';

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;
  factory AppUser.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppUser._();

  String get uid;

  String get username;

  String get email;

  String? get photoUrl;


  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic> ;

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}

