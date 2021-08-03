import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    (AppState state, dynamic action) {
      print(action);
      return state;
    },
    TypedReducer<AppState, GetMoviesActions>(_getMovies),
    TypedReducer<AppState, GetMoviesActionsSuccessful>(_getMoviesSuccessful),
    TypedReducer<AppState, GetMoviesActionsError>(_getMoviesError),
    TypedReducer<AppState, SelectedMovie>(_setSelectedMovie),
    TypedReducer<AppState, RegisterSuccessful>(_registerSuccessful),
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
    TypedReducer<AppState, InitAppSuccessful>(_initAppSuccessul),
  ],
);

AppState _getMovies(AppState state, GetMoviesActions action) {
  return state.rebuild(
    (AppStateBuilder b) {
      b.isLoading = true;
    },
  );
}

AppState _getMoviesSuccessful(AppState state, GetMoviesActionsSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder
        ..movies.addAll(action.movieList)
        ..isLoading = false
        ..page = state.page + 1;
    },
  );
}

AppState _getMoviesError(AppState state, GetMoviesActionsError action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder
        ..isLoading = false
        ..error = '${action.error}';

      print(builder.error);
    },
  );
}

AppState _setSelectedMovie(AppState state, SelectedMovie action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.selectedMovie = action.movieId;
    },
  );
}

AppState _registerSuccessful(AppState state, RegisterSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.user = action.user.toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.user = null;
  });
}

AppState _initAppSuccessul(AppState state, InitAppSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.user = action.user?.toBuilder();
  });
}
