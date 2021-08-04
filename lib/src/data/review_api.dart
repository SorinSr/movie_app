
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movies_app/src/model/review.dart';

class ReviewApi {
  const ReviewApi({required FirebaseFirestore firebaseFirestore}) : _firebaseFirestore = firebaseFirestore;

  final FirebaseFirestore _firebaseFirestore;

  Future<void> createReview({required String uid, required int movieId, required String text}) async {
    final DocumentReference<Map<String, dynamic>> ref = _firebaseFirestore.collection('reviews').doc();
    final Review review = Review(
      id: ref.id,
      uid: uid,
      movieId: movieId,
      text: text,
      dateCreated: DateTime.now().toUtc(),
    );
    await ref.set(review.json);
  }

  Future<List<Review>> getReviews(int movieId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firebaseFirestore.collection('reviews').where('movieId', isEqualTo: movieId).get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data()))
        .toList();
  }
}
