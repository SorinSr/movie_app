library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/src/model/movie.dart';

part 'get_movies_freezed.dart';

part 'selected_movie.dart';

part 'index.freezed.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}
