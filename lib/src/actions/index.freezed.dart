// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetMoviesActionsTearOff {
  const _$GetMoviesActionsTearOff();

  GetMoviesActionsStart call() {
    return const GetMoviesActionsStart();
  }

  GetMoviesActionsSuccessful successful(List<Movie> movieList) {
    return GetMoviesActionsSuccessful(
      movieList,
    );
  }

  GetMoviesActionsError error(Object error, StackTrace stackTrace) {
    return GetMoviesActionsError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetMoviesActions = _$GetMoviesActionsTearOff();

/// @nodoc
mixin _$GetMoviesActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movieList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movieList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value) $default, {
    required TResult Function(GetMoviesActionsSuccessful value) successful,
    required TResult Function(GetMoviesActionsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value)? $default, {
    TResult Function(GetMoviesActionsSuccessful value)? successful,
    TResult Function(GetMoviesActionsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesActionsCopyWith<$Res> {
  factory $GetMoviesActionsCopyWith(
          GetMoviesActions value, $Res Function(GetMoviesActions) then) =
      _$GetMoviesActionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesActionsCopyWithImpl<$Res>
    implements $GetMoviesActionsCopyWith<$Res> {
  _$GetMoviesActionsCopyWithImpl(this._value, this._then);

  final GetMoviesActions _value;
  // ignore: unused_field
  final $Res Function(GetMoviesActions) _then;
}

/// @nodoc
abstract class $GetMoviesActionsStartCopyWith<$Res> {
  factory $GetMoviesActionsStartCopyWith(GetMoviesActionsStart value,
          $Res Function(GetMoviesActionsStart) then) =
      _$GetMoviesActionsStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesActionsStartCopyWithImpl<$Res>
    extends _$GetMoviesActionsCopyWithImpl<$Res>
    implements $GetMoviesActionsStartCopyWith<$Res> {
  _$GetMoviesActionsStartCopyWithImpl(
      GetMoviesActionsStart _value, $Res Function(GetMoviesActionsStart) _then)
      : super(_value, (v) => _then(v as GetMoviesActionsStart));

  @override
  GetMoviesActionsStart get _value => super._value as GetMoviesActionsStart;
}

/// @nodoc

class _$GetMoviesActionsStart implements GetMoviesActionsStart {
  const _$GetMoviesActionsStart();

  @override
  String toString() {
    return 'GetMoviesActions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMoviesActionsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movieList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movieList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value) $default, {
    required TResult Function(GetMoviesActionsSuccessful value) successful,
    required TResult Function(GetMoviesActionsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value)? $default, {
    TResult Function(GetMoviesActionsSuccessful value)? successful,
    TResult Function(GetMoviesActionsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMoviesActionsStart implements GetMoviesActions {
  const factory GetMoviesActionsStart() = _$GetMoviesActionsStart;
}

/// @nodoc
abstract class $GetMoviesActionsSuccessfulCopyWith<$Res> {
  factory $GetMoviesActionsSuccessfulCopyWith(GetMoviesActionsSuccessful value,
          $Res Function(GetMoviesActionsSuccessful) then) =
      _$GetMoviesActionsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Movie> movieList});
}

/// @nodoc
class _$GetMoviesActionsSuccessfulCopyWithImpl<$Res>
    extends _$GetMoviesActionsCopyWithImpl<$Res>
    implements $GetMoviesActionsSuccessfulCopyWith<$Res> {
  _$GetMoviesActionsSuccessfulCopyWithImpl(GetMoviesActionsSuccessful _value,
      $Res Function(GetMoviesActionsSuccessful) _then)
      : super(_value, (v) => _then(v as GetMoviesActionsSuccessful));

  @override
  GetMoviesActionsSuccessful get _value =>
      super._value as GetMoviesActionsSuccessful;

  @override
  $Res call({
    Object? movieList = freezed,
  }) {
    return _then(GetMoviesActionsSuccessful(
      movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$GetMoviesActionsSuccessful implements GetMoviesActionsSuccessful {
  const _$GetMoviesActionsSuccessful(this.movieList);

  @override
  final List<Movie> movieList;

  @override
  String toString() {
    return 'GetMoviesActions.successful(movieList: $movieList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesActionsSuccessful &&
            (identical(other.movieList, movieList) ||
                const DeepCollectionEquality()
                    .equals(other.movieList, movieList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieList);

  @JsonKey(ignore: true)
  @override
  $GetMoviesActionsSuccessfulCopyWith<GetMoviesActionsSuccessful>
      get copyWith =>
          _$GetMoviesActionsSuccessfulCopyWithImpl<GetMoviesActionsSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movieList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(movieList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movieList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(movieList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value) $default, {
    required TResult Function(GetMoviesActionsSuccessful value) successful,
    required TResult Function(GetMoviesActionsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value)? $default, {
    TResult Function(GetMoviesActionsSuccessful value)? successful,
    TResult Function(GetMoviesActionsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMoviesActionsSuccessful implements GetMoviesActions {
  const factory GetMoviesActionsSuccessful(List<Movie> movieList) =
      _$GetMoviesActionsSuccessful;

  List<Movie> get movieList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesActionsSuccessfulCopyWith<GetMoviesActionsSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesActionsErrorCopyWith<$Res> {
  factory $GetMoviesActionsErrorCopyWith(GetMoviesActionsError value,
          $Res Function(GetMoviesActionsError) then) =
      _$GetMoviesActionsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetMoviesActionsErrorCopyWithImpl<$Res>
    extends _$GetMoviesActionsCopyWithImpl<$Res>
    implements $GetMoviesActionsErrorCopyWith<$Res> {
  _$GetMoviesActionsErrorCopyWithImpl(
      GetMoviesActionsError _value, $Res Function(GetMoviesActionsError) _then)
      : super(_value, (v) => _then(v as GetMoviesActionsError));

  @override
  GetMoviesActionsError get _value => super._value as GetMoviesActionsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetMoviesActionsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetMoviesActionsError implements GetMoviesActionsError {
  const _$GetMoviesActionsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetMoviesActions.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesActionsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetMoviesActionsErrorCopyWith<GetMoviesActionsError> get copyWith =>
      _$GetMoviesActionsErrorCopyWithImpl<GetMoviesActionsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movieList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movieList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value) $default, {
    required TResult Function(GetMoviesActionsSuccessful value) successful,
    required TResult Function(GetMoviesActionsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesActionsStart value)? $default, {
    TResult Function(GetMoviesActionsSuccessful value)? successful,
    TResult Function(GetMoviesActionsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMoviesActionsError implements GetMoviesActions, ErrorAction {
  const factory GetMoviesActionsError(Object error, StackTrace stackTrace) =
      _$GetMoviesActionsError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesActionsErrorCopyWith<GetMoviesActionsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

  RegisterStart call(
      String email, String password, void Function(AppAction) result) {
    return RegisterStart(
      email,
      password,
      result,
    );
  }

  RegisterSuccessful successful(AppUser user) {
    return RegisterSuccessful(
      user,
    );
  }

  RegisterError error(Object error, StackTrace stackTrace) {
    return RegisterError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterStart value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterStart value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;
}

/// @nodoc
abstract class $RegisterStartCopyWith<$Res> {
  factory $RegisterStartCopyWith(
          RegisterStart value, $Res Function(RegisterStart) then) =
      _$RegisterStartCopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) result});
}

/// @nodoc
class _$RegisterStartCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterStartCopyWith<$Res> {
  _$RegisterStartCopyWithImpl(
      RegisterStart _value, $Res Function(RegisterStart) _then)
      : super(_value, (v) => _then(v as RegisterStart));

  @override
  RegisterStart get _value => super._value as RegisterStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? result = freezed,
  }) {
    return _then(RegisterStart(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc

class _$RegisterStart implements RegisterStart {
  const _$RegisterStart(this.email, this.password, this.result);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) result;

  @override
  String toString() {
    return 'Register(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterStart &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $RegisterStartCopyWith<RegisterStart> get copyWith =>
      _$RegisterStartCopyWithImpl<RegisterStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterStart value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterStart value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RegisterStart implements Register {
  const factory RegisterStart(
          String email, String password, void Function(AppAction) result) =
      _$RegisterStart;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  void Function(AppAction) get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterStartCopyWith<RegisterStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSuccessfulCopyWith<$Res> {
  factory $RegisterSuccessfulCopyWith(
          RegisterSuccessful value, $Res Function(RegisterSuccessful) then) =
      _$RegisterSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$RegisterSuccessfulCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterSuccessfulCopyWith<$Res> {
  _$RegisterSuccessfulCopyWithImpl(
      RegisterSuccessful _value, $Res Function(RegisterSuccessful) _then)
      : super(_value, (v) => _then(v as RegisterSuccessful));

  @override
  RegisterSuccessful get _value => super._value as RegisterSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(RegisterSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessful implements RegisterSuccessful {
  const _$RegisterSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Register.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith =>
      _$RegisterSuccessfulCopyWithImpl<RegisterSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterStart value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterStart value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessful implements Register {
  const factory RegisterSuccessful(AppUser user) = _$RegisterSuccessful;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterSuccessfulCopyWith<RegisterSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(
      RegisterError _value, $Res Function(RegisterError) _then)
      : super(_value, (v) => _then(v as RegisterError));

  @override
  RegisterError get _value => super._value as RegisterError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(RegisterError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$RegisterError implements RegisterError {
  const _$RegisterError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Register.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String email, String password, void Function(AppAction) result)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterStart value) $default, {
    required TResult Function(RegisterSuccessful value) successful,
    required TResult Function(RegisterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterStart value)? $default, {
    TResult Function(RegisterSuccessful value)? successful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements Register, ErrorAction {
  const factory RegisterError(Object error, StackTrace stackTrace) =
      _$RegisterError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SelectedMovieTearOff {
  const _$SelectedMovieTearOff();

  _SelectedMovie call(int movieId) {
    return _SelectedMovie(
      movieId,
    );
  }
}

/// @nodoc
const $SelectedMovie = _$SelectedMovieTearOff();

/// @nodoc
mixin _$SelectedMovie {
  int get movieId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedMovieCopyWith<SelectedMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedMovieCopyWith<$Res> {
  factory $SelectedMovieCopyWith(
          SelectedMovie value, $Res Function(SelectedMovie) then) =
      _$SelectedMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$SelectedMovieCopyWithImpl<$Res>
    implements $SelectedMovieCopyWith<$Res> {
  _$SelectedMovieCopyWithImpl(this._value, this._then);

  final SelectedMovie _value;
  // ignore: unused_field
  final $Res Function(SelectedMovie) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SelectedMovieCopyWith<$Res>
    implements $SelectedMovieCopyWith<$Res> {
  factory _$SelectedMovieCopyWith(
          _SelectedMovie value, $Res Function(_SelectedMovie) then) =
      __$SelectedMovieCopyWithImpl<$Res>;
  @override
  $Res call({int movieId});
}

/// @nodoc
class __$SelectedMovieCopyWithImpl<$Res>
    extends _$SelectedMovieCopyWithImpl<$Res>
    implements _$SelectedMovieCopyWith<$Res> {
  __$SelectedMovieCopyWithImpl(
      _SelectedMovie _value, $Res Function(_SelectedMovie) _then)
      : super(_value, (v) => _then(v as _SelectedMovie));

  @override
  _SelectedMovie get _value => super._value as _SelectedMovie;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_SelectedMovie(
      movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedMovie implements _SelectedMovie {
  const _$_SelectedMovie(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'SelectedMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedMovie &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  _$SelectedMovieCopyWith<_SelectedMovie> get copyWith =>
      __$SelectedMovieCopyWithImpl<_SelectedMovie>(this, _$identity);
}

abstract class _SelectedMovie implements SelectedMovie {
  const factory _SelectedMovie(int movieId) = _$_SelectedMovie;

  @override
  int get movieId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedMovieCopyWith<_SelectedMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
