// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String uid;
  @override
  final String username;
  @override
  final String email;
  @override
  final String? photoUrl;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {required this.uid,
      required this.username,
      required this.email,
      this.photoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'User', 'uid');
    BuiltValueNullFieldError.checkNotNull(username, 'User', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'User', 'email');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        uid == other.uid &&
        username == other.username &&
        email == other.email &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), username.hashCode), email.hashCode),
        photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('uid', uid)
          ..add('username', username)
          ..add('email', email)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _username = $v.username;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'User', 'uid'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'User', 'username'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, 'User', 'email'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
