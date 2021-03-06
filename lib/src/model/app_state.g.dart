// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movies',
      serializers.serialize(object.movies, specifiedType: const FullType(BuiltList, const [const FullType(Movie)])),
      'isLoading',
      serializers.serialize(object.isLoading, specifiedType: const FullType(bool)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'reviews',
      serializers.serialize(object.reviews, specifiedType: const FullType(BuiltList, const [const FullType(Review)])),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result..add('error')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.selectedMovie;
    if (value != null) {
      result..add('selectedMovie')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result..add('user')..add(serializers.serialize(value, specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Movie)]))! as BuiltList<Object?>);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'selectedMovie':
          result.selectedMovie = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value, specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Review)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movies;
  @override
  final bool isLoading;
  @override
  final String? error;
  @override
  final int page;
  @override
  final int? selectedMovie;
  @override
  final AppUser? user;
  @override
  final BuiltList<Review> reviews;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.movies,
      required this.isLoading,
      this.error,
      required this.page,
      this.selectedMovie,
      this.user,
      required this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(movies, 'AppState', 'movies');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page');
    BuiltValueNullFieldError.checkNotNull(reviews, 'AppState', 'reviews');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movies == other.movies &&
        isLoading == other.isLoading &&
        error == other.error &&
        page == other.page &&
        selectedMovie == other.selectedMovie &&
        user == other.user &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc($jc(0, movies.hashCode), isLoading.hashCode), error.hashCode), page.hashCode),
                selectedMovie.hashCode),
            user.hashCode),
        reviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movies', movies)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('page', page)
          ..add('selectedMovie', selectedMovie)
          ..add('user', user)
          ..add('reviews', reviews))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Movie>? _movies;

  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();

  set movies(ListBuilder<Movie>? movies) => _$this._movies = movies;

  bool? _isLoading;

  bool? get isLoading => _$this._isLoading;

  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _error;

  String? get error => _$this._error;

  set error(String? error) => _$this._error = error;

  int? _page;

  int? get page => _$this._page;

  set page(int? page) => _$this._page = page;

  int? _selectedMovie;

  int? get selectedMovie => _$this._selectedMovie;

  set selectedMovie(int? selectedMovie) => _$this._selectedMovie = selectedMovie;

  AppUserBuilder? _user;

  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();

  set user(AppUserBuilder? user) => _$this._user = user;

  ListBuilder<Review>? _reviews;

  ListBuilder<Review> get reviews => _$this._reviews ??= new ListBuilder<Review>();

  set reviews(ListBuilder<Review>? reviews) => _$this._reviews = reviews;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movies = $v.movies.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _page = $v.page;
      _selectedMovie = $v.selectedMovie;
      _user = $v.user?.toBuilder();
      _reviews = $v.reviews.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              movies: movies.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'),
              error: error,
              page: BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page'),
              selectedMovie: selectedMovie,
              user: _user?.build(),
              reviews: reviews.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();

        _$failedField = 'user';
        _user?.build();
        _$failedField = 'reviews';
        reviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
