import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/firebase/i_firebase_fazard.dart';
import 'package:movie_lib/domain/firebase/user_mode.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: FirebaseFazard)
class FirebaseRepository implements FirebaseFazard {
  final _auth = FirebaseAuth.instance;
  final _store = FirebaseFirestore.instance;
  @override
  Future<User?> signUpUser(UserModel user) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: user.email!, password: user.password!);
      final currentUser = userCredential.user;

      if (currentUser != null) {
        await _store.collection("users").doc(currentUser.uid).set({
          "id": currentUser.uid,
          "username": user.name,
          "email": currentUser.email,
          "phone": user.phone,
          "createdAt": DateTime.now(),
        });
      }

      return currentUser;
    } on FirebaseException catch (e) {
      log(e.toString());
      throw FirebaseAuthException(code: e.message!);
    }
  }

  @override
  Future<User?> logInUser(
      {required String email, required String password}) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      final user = userCredential.user;
      return user;
    } on FirebaseException catch (e) {
      log(e.toString());
      throw e.message!;
    }
  }
}
