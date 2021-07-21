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
