import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movies_app/src/model/app_user.dart';

class AuthApi {
  const AuthApi({required FirebaseAuth firebaseAuth, required FirebaseFirestore firebaseFirestore})
      : _firebaseAuth = firebaseAuth,
        _firebaseFirestore = firebaseFirestore;

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<AppUser?> getCurrentUser() async {
    final User? currentUser = _firebaseAuth.currentUser;

    if (currentUser == null) {
      return null;
    }

    final DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _firebaseFirestore.doc('users/${currentUser.uid}').get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> register(String email, String password) async {
    UserCredential userCredentials;

    try {
      userCredentials = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
        userCredentials = await _firebaseAuth.signInWithCredential(credential);
      } else {
        rethrow;
      }
    }

    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..uid = userCredentials.user!.uid
        ..username = userCredentials.user!.displayName
        ..email = email;
    });

    await _firebaseFirestore.doc('users/${user.uid}').set(user.json);

    print('User registered: :' + user.toString());
    return user;
  }
}
