import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'app_state.dart';
import 'app_user.dart';
import 'movie.dart';
import 'review.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppUser, AppState, Movie, Review])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
