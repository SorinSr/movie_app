library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:movies_app/src/model/movie.dart';
import 'package:movies_app/src/model/review.dart';

part 'create_comment.dart';
part 'get_movies_freezed.dart';
part 'get_reviews.dart';
part 'get_users.dart';
part 'index.freezed.dart';
part 'init_app.dart';
part 'register.dart';
part 'selected_movie.dart';
part 'sign_out.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
