import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/container/is_loading_container.dart';
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
    final double diff = _scrollController.position.maxScrollExtent - _scrollController.offset;
    final double threshold = (MediaQuery.of(context).size.height) * 0.2;

    if (diff < threshold && !isLoading) {
      store.dispatch(const GetMoviesActions());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviesApp lalalalal'),
        actions: <Widget>[
          IsLoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              print('ISLOADING +++++++++  ' + isLoading.toString());
              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return IconButton(
                icon: const Icon(Icons.movie_filter_sharp),
                onPressed: () {
                  final Store<AppState> store = StoreProvider.of<AppState>(context);
                  store.dispatch(const GetMoviesActions());
                },
              );
            },
          ),
        ],
      ),
      body: MovieContainer(
        builder: (BuildContext context, List<Movie> movies) {
          return IsLoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading && movies.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                controller: _scrollController,
                itemCount: movies.length,
                physics: const AlwaysScrollableScrollPhysics(),
                cacheExtent: MediaQuery.of(context).size.height,
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = movies[index];

                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    child: GridTile(
                      // child: Image.network(movie.largeCoverImage),
                      child: IconButton(
                          onPressed: () {
                            print("Movie title:   " + movie.title);

                            Navigator.push(
                              context,
                              MaterialPageRoute<Widget>(builder: (BuildContext context) => MovieDetails(movies[index])),
                            );
                          },
                          icon: Image.network(movie.largeCoverImage)),
                      footer: GridTileBar(
                        backgroundColor: Colors.white,
                        title: Text(
                          movie.title,
                          style: const TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  MovieDetails(Movie movie) {
    this.movie = movie;
  }

  Movie? movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        elevation: 24,
        child:  SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 1, 5),
                child: Text(movie!.title.toString()),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(movie!.summary.toString(), textAlign: TextAlign.center),
              ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(movie!.year.toString(), textAlign: TextAlign.center),
              ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(movie!.genres.toString(), textAlign: TextAlign.center),
              ),Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(movie!.rating.toString(), textAlign: TextAlign.center),
              ),
              Image.network(movie!.largeCoverImage, width: 300, height: 450),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
