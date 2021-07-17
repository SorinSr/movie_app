import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/actions/get_movies_actions.dart';
import 'package:movies_app/src/container/movie_ontianer.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux/redux.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State createState() {
    return _PresentationPageState();
  }
}

class _PresentationPageState extends State<PresentationPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final bool isLoading = store.state.isLoading;
    final double max = _scrollController.position.maxScrollExtent;
    final double offset = _scrollController.offset;
    final double delta = max - offset;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double threshold = screenHeight * 0.2;

    if (delta < threshold && !isLoading) {
      store.dispatch(GetMoviesActions());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies App')),
      body: MovieContainer(
        builder: (BuildContext buildContext, List<Movie> moviesList) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.60,
            ),
            controller: _scrollController,
            itemCount: moviesList.length,
            physics: const AlwaysScrollableScrollPhysics(),
            cacheExtent: MediaQuery.of(context).size.height,
            itemBuilder: (BuildContext context, int index) {
              final Movie singleMovie = moviesList[index];

              return SizedBox(
                height: 250,
                child: GridTile(
                  child: Image.network(singleMovie.largeCoverImage),
                  footer: GridTileBar(
                    backgroundColor: Colors.black,
                    title: Text(singleMovie.title),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
