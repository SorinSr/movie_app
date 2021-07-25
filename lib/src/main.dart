import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:movies_app/src/data/movie_api.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/presentation/presentation_page.dart';
import 'package:movies_app/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'epic/epic_movies.dart';

void main() {
  const String apiUrl = 'https://yts.mx/api/v2';
  final Client client = Client();

  final MoviesApi moviesApi = MoviesApi(apiUrl: apiUrl, client: client);

  // final AppMiddleware appMiddleware = AppMiddleware(moviesApi: moviesApi);
  final AppEpics appEpics = AppEpics(moviesApi: moviesApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    // middleware: appMiddleware.middleware,

    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epic),
    ],
  );

  // store.dispatch(const GetMoviesActionsStart());

  runApp(MoviesApp(store: store));
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const PresentationPage(),
        theme: ThemeData.light(),
      ),
    );
  }
}
