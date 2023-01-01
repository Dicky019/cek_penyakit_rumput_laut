import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../features/auth/data/response/user_response.dart';
import 'config_firebase/firebase_config.dart';

class AuthFirebase {
  final _firebaseAuth = FirebaseAuth.instance;

  User? get getCurentUser => _firebaseAuth.currentUser;

  Future<FirebaseResult<User?>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return FirebaseResult.successFirebase(response.user);
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future<FirebaseResult<User?>> signIn(
      {required String email, required String password}) async {
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return FirebaseResult.successFirebase(response.user);
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future<FirebaseResult<User?>> google() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final response =
          (await FirebaseAuth.instance.signInWithCredential(credential)).user;

      return FirebaseResult.successFirebase(
        response,
      );
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future signOut() async {
    try {
      final response = await _firebaseAuth.signOut();
      return FirebaseResult.successFirebase(
        response,
      );
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  FirebaseResult<UserResponse> loginResponse() {
    try {
      return FirebaseResult.successFirebase(UserResponse(
        avatar: getCurentUser?.photoURL,
        email: getCurentUser?.email,
        username: getCurentUser?.displayName,
      ));
    } on FirebaseAuthException catch (e, st) {
      return FirebaseResult.failureFirebase(
        e,
        st,
      );
    }
  }

  Future<void> get reload => _firebaseAuth.currentUser!.reload();
}

final auhtFirebaseProvider = Provider<AuthFirebase>((ref) {
  return AuthFirebase();
});
