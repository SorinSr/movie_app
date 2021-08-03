import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/container/movie_details_container.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:redux/redux.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MovieDetailsContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: SingleChildScrollView(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              elevation: 24,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 15, 1, 5),
                    child: Text(movie.title.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(movie.summary.toString(), textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(movie.year.toString(), textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(movie.genres.toString(), textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(movie.rating.toString(), textAlign: TextAlign.center),
                  ),
                  Image.network(movie.largeCoverImage, width: 300, height: 450),
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            elevation: 20,
            child: Icon(
              Icons.comment_bank_outlined,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        );
      },
    );
  }
}
