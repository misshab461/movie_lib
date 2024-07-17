import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_lib/domain/firebase/user_mode.dart';

abstract class FirebaseFazard {
  Future<User?> signUpUser(UserModel user);
  Future<User?> logInUser({required String email, required String password});
}
