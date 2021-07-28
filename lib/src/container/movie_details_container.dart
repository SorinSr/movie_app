import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux/redux.dart';

class MovieDetailsContainer extends StatelessWidget {
  const MovieDetailsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      converter: (Store<AppState> store) {
        return store.state.movies.firstWhere((Movie item) => item.id == store.state.selectedMovie);
      },
      builder: builder,
    );
  }
}