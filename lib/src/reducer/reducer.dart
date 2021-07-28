import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/model/app_state.dart';
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
  ],
);

AppState _getMovies(AppState state, GetMoviesActions action) {
  // print('++++    _getMovies was called from reducer');
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

      // print('>>>>>>>> Data from reducer       _getMoviesSuccessful  :::');

      // print(builder.movies);
      // print(builder.page);
    },
  );
}

AppState _getMoviesError(AppState state, GetMoviesActionsError action) {
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

AppState _setSelectedMovie(AppState state, SelectedMovie action) {
  return state.rebuild(
    (AppStateBuilder builder) {
      builder.selectedMovie = action.movieId;
    },
  );
}
