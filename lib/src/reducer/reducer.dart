import 'package:movies_app/src/actions/get_movies_actions.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    (AppState state, dynamic action) {
      print(action);
      return state;
    },
    TypedReducer<AppState, GetMoviesActions>(_getMovies),
    TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
    TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  ],
);

AppState _getMovies(AppState state, GetMoviesActions action) {
  return state.rebuild(
    (AppStateBuilder b) {
      b.isLoading = true;
    },
  );
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder
        ..movies.addAll(action.movies)
        ..isLoading = false
        ..page = state.page + 1;

      print('>>>> Data from reducer :::');

      print(builder.movies);
      print(builder.page);
    },
  );
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder
        ..isLoading = false
        ..error = '${action.error}';

      print('>>>> Error from reducer :::');

      print(builder.error);
    },
  );
}
