import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/data/auth_api.dart';
import 'package:movies_app/src/data/movie_api.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/presentation/details_movie_page.dart';
import 'package:movies_app/src/presentation/login_page.dart';
import 'package:movies_app/src/presentation/presentation_page.dart';
import 'package:movies_app/src/presentation/reviews_page.dart';
import 'package:movies_app/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'epic/epics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  const String apiUrl = 'https://yts.mx/api/v2';
  final Client client = Client();

  final MoviesApi moviesApi = MoviesApi(apiUrl: apiUrl, client: client);
  // final ReviewApi reviewApi = ReviewApi(firebaseFirestore: _firebaseFirestore);
  final AuthApi authApi = AuthApi(firebaseAuth: _firebaseAuth, firebaseFirestore: _firebaseFirestore);

  final AppEpics appEpics = AppEpics(
    moviesApi: moviesApi, authApi: authApi,
    // reviewApi: reviewApi
  );

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epic),
    ],
  );

  store.dispatch(const GetMoviesActionsStart());
  store.dispatch(const InitApp());

  runApp(
    MoviesApp(store: store),
  );
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
        routes: <String, WidgetBuilder>{
          '/movieDetails': (BuildContext context) => const MovieDetails(),
          '/loginPage': (BuildContext context) => const LoginPage(),
          '/showReviews': (BuildContext context) => const ReviewsPage(),
        },
      ),
    );
  }
}
