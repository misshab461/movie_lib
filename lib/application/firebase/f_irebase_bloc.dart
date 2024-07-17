import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/firebase/i_firebase_fazard.dart';
import 'package:movie_lib/domain/firebase/user_mode.dart';

part 'f_irebase_event.dart';
part 'f_irebase_state.dart';
part 'f_irebase_bloc.freezed.dart';

@injectable
class FirebaseBloc extends Bloc<FIrebaseEvent, FirebaseState> {
  final FirebaseFazard firebaseFazard;
  FirebaseBloc(this.firebaseFazard) : super(const FirebaseState.initial()) {
    final auth = FirebaseAuth.instance;
    on<CheckLoginStatus>((event, emit) async {
      log('Check login bloc called');
      User? user;
      try {
        await Future.delayed(const Duration(milliseconds: 2500), () {
          user = auth.currentUser;
        });

        if (user != null) {
          return emit(Authenticated(user));
        } else {
          return emit(const UnAuthenticated());
        }
      } catch (e) {
        emit(HasError(message: e.toString()));
      }
    });

    on<SignupEvent>((event, emit) async {
      log('signup bloc called');
      emit(Loading());
      final userRegister = await firebaseFazard.signUpUser(event.user);

      try {
        if (userRegister != null) {
          return emit(Authenticated(userRegister));
        } else {
          emit(const UnAuthenticated());
        }
      } catch (e) {
        emit(
          HasError(message: e.toString()),
        );
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(Loading());
      log('LOgin bloc called');

      try {
        final loggedUser = await firebaseFazard.logInUser(
            email: event.email, password: event.password);

        emit(Authenticated(loggedUser));
      } catch (e) {
        emit(
          HasError(message: e.toString()),
        );
      }
    });

    on<SignoutEvent>((event, emit) async {
      emit(const Loading());
      await auth.signOut();
      emit(const UnAuthenticated());
    });
  }
}
