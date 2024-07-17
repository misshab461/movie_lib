part of 'f_irebase_bloc.dart';

@freezed
class FIrebaseEvent with _$FIrebaseEvent {
  const factory FIrebaseEvent.checkLoginStatus() = CheckLoginStatus;
  const factory FIrebaseEvent.signupEvent(UserModel user) = SignupEvent;
  const factory FIrebaseEvent.loginEvent(
      {required String email, required String password}) = LoginEvent;

  const factory FIrebaseEvent.signoutEvent() = SignoutEvent;
}
