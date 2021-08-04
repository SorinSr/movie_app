library movie;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies_app/src/model/serializers.dart';

part 'review.g.dart';

abstract class Review implements Built<Review, ReviewBuilder> {
  factory Review({
    required String id,
    required String uid,
    required int movieId,
    required String text,
    DateTime? dateCreated,
  }) {
    return _$Review((ReviewBuilder b) {
      b
        ..id = id
        ..uid = uid
        ..movieId = movieId
        ..text = text
        ..dateCreated = dateCreated ?? DateTime.now();
    });
  }

  factory Review.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Review._();

  String get id;

  String get uid;

  int get movieId;

  String get text;

  DateTime get dateCreated;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Review> get serializer => _$reviewSerializer;
}
