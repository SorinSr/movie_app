import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_movies_actions.dart';
import 'package:weather_app/src/data/movie_api.dart';
import 'package:weather_app/src/model/app_state.dart';
import 'package:weather_app/src/model/movie.dart';

class AppMiddleware {
  const AppMiddleware({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies),
    ];
  }

  Future<void> _getMovies(Store<AppState> store, GetMovies action, NextDispatcher next) async {
    next(action);

    try {
      final List<Movie> movies = await _moviesApi.getMovies(store.state.page );
      final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);
      print(successful);
      store.dispatch(successful);
    } catch (err) {
      final GetMoviesError error = GetMoviesError(err);
      print(error);
      store.dispatch(error);
    }
  }
}