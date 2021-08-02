library actions;

import 'package:movies_app/src/model/movie.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/src/actions/index.dart';

part 'get_movies_freezed.dart';

part 'register.dart';

part 'selected_movie.dart';

part 'index.freezed.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
