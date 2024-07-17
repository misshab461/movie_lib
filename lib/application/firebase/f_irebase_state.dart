part of 'f_irebase_bloc.dart';

@freezed
class FirebaseState with _$FirebaseState {
  const factory FirebaseState.initial() = Initial;
  const factory FirebaseState.loading() = Loading;
  const factory FirebaseState.authenticated(User? user) = Authenticated;
  const factory FirebaseState.unAuthenticated() = UnAuthenticated;
  const factory FirebaseState.hasError({required String message}) = HasError;
}
