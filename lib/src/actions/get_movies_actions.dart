
import 'package:weather_app/src/model/movie.dart';

class GetMovies {
  GetMovies();

  @override
  String toString() {
    return 'GetMovies{}';
  }
}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movies);

  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMoviesSuccess{movies: $movies}';
  }
}

class GetMoviesError {
  GetMoviesError(this.error);

  final Object error;

  @override
  String toString() {
    return 'GetMoviesError{error: $error}';
  }
}
