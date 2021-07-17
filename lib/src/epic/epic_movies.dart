// import 'package:redux_epics/redux_epics.dart';
// import 'package:weather_app/src/actions/get_movies_actions.dart';
// import 'package:weather_app/src/data/movie_api.dart';
// import 'package:weather_app/src/model/app_state.dart';
//
// class AppEpics {
//   const AppEpics({required MoviesApi moviesApi}) : _moviesApi = moviesApi;
//
//   final MoviesApi _moviesApi;
//
//   Epic<AppState> get epic {
//     return combineEpics(<Epic<AppState>>[
//       TypedEpic<AppState, GetMovies>(_getMovies),
//     ],);
//   }
//
//   Stream _getMovies(Stream <GetMovies> action, EpicStore<AppState> store) {
//     return action
//         .asyncMap((event) => _moviesApi.getMovies(store.state.page))
//         .map<GetMoviesSuccessful>((movies) => GetMoviesSuccessful(movies));
//
//   }
//
// }