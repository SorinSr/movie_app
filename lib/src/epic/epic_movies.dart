import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/data/movie_api.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({required MoviesApi moviesApi}) : _moviesApi = moviesApi;

  final MoviesApi _moviesApi;

  Epic<AppState> get epic {
    return combineEpics(
      <Epic<AppState>>[
        TypedEpic<AppState, GetMoviesActions>(_getMovies),
      ],
    );
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesActions> action, EpicStore<AppState> store) {
    return action
        .asyncMap((GetMoviesActions action) => _moviesApi.getMovies(store.state.page))
        .map<AppAction>((List<Movie> movieList) => GetMoviesActions.successful(movieList))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesActions.error(error, stackTrace));
  }
}
