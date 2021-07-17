import 'package:movies_app/src/actions/get_movies_actions.dart';
import 'package:movies_app/src/data/movie_api.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMoviesActions>(_getMovies),
    ];
  }

  Future<void> _getMovies(Store<AppState> store, GetMoviesActions action, NextDispatcher next) async {
    next(action);

    try {
      final List<Movie> movies = await _moviesApi.getMovies(store.state.page);
      final GetMoviesSuccessful getMoviesSuccessfulList = GetMoviesSuccessful(movies);
      print(getMoviesSuccessfulList);
      store.dispatch(getMoviesSuccessfulList);
    } catch (error) {
      final GetMoviesError getMoviesError = GetMoviesError(error);
      print(getMoviesError);
      store.dispatch(getMoviesError);
    }
  }
}
