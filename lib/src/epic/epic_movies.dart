import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/data/auth_api.dart';
import 'package:movies_app/src/data/movie_api.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({
    required MoviesApi moviesApi,
    required AuthApi authApi,
  })   : _moviesApi = moviesApi,
        _authApi = authApi;

  final MoviesApi _moviesApi;
  final AuthApi _authApi;

  Epic<AppState> get epic {
    return combineEpics(
      <Epic<AppState>>[
        TypedEpic<AppState, GetMoviesActionsStart>(_getMovies),
        TypedEpic<AppState, RegisterStart>(_register),
        TypedEpic<AppState, SignOutStart>(_signOut),
        TypedEpic<AppState, InitAppStart>(_initApp),
      ],
    );
  }

  Stream<AppAction> _getMovies(Stream<GetMoviesActionsStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetMoviesActionsStart action) => _moviesApi.getMovies(store.state.page))
        .map<AppAction>((List<Movie> movieList) => GetMoviesActions.successful(movieList))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesActions.error(error, stackTrace));
  }

  Stream<AppAction> _register(Stream<RegisterStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((RegisterStart action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.register(action.email, action.password))
        .map((AppUser user) => Register.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Register.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _signOut(Stream<SignOutStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((SignOutStart action) => _authApi.signOut())
        .map((_) => const SignOut.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => SignOut.error(error, stackTrace));
  }

  Stream<AppAction> _initApp(Stream<InitAppStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((InitAppStart action) => _authApi.getCurrentUser())
        .map((AppUser? user) => InitApp.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => InitApp.error(error, stackTrace));
  }
}
