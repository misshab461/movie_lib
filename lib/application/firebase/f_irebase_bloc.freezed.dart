// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'f_irebase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FIrebaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
    required TResult Function(UserModel user) signupEvent,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function() signoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
    TResult? Function(UserModel user)? signupEvent,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function()? signoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    TResult Function(UserModel user)? signupEvent,
    TResult Function(String email, String password)? loginEvent,
    TResult Function()? signoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(SignoutEvent value) signoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(SignoutEvent value)? signoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(SignoutEvent value)? signoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIrebaseEventCopyWith<$Res> {
  factory $FIrebaseEventCopyWith(
          FIrebaseEvent value, $Res Function(FIrebaseEvent) then) =
      _$FIrebaseEventCopyWithImpl<$Res, FIrebaseEvent>;
}

/// @nodoc
class _$FIrebaseEventCopyWithImpl<$Res, $Val extends FIrebaseEvent>
    implements $FIrebaseEventCopyWith<$Res> {
  _$FIrebaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLoginStatusImplCopyWith<$Res> {
  factory _$$CheckLoginStatusImplCopyWith(_$CheckLoginStatusImpl value,
          $Res Function(_$CheckLoginStatusImpl) then) =
      __$$CheckLoginStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginStatusImplCopyWithImpl<$Res>
    extends _$FIrebaseEventCopyWithImpl<$Res, _$CheckLoginStatusImpl>
    implements _$$CheckLoginStatusImplCopyWith<$Res> {
  __$$CheckLoginStatusImplCopyWithImpl(_$CheckLoginStatusImpl _value,
      $Res Function(_$CheckLoginStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoginStatusImpl implements CheckLoginStatus {
  const _$CheckLoginStatusImpl();

  @override
  String toString() {
    return 'FIrebaseEvent.checkLoginStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoginStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
    required TResult Function(UserModel user) signupEvent,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function() signoutEvent,
  }) {
    return checkLoginStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
    TResult? Function(UserModel user)? signupEvent,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function()? signoutEvent,
  }) {
    return checkLoginStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    TResult Function(UserModel user)? signupEvent,
    TResult Function(String email, String password)? loginEvent,
    TResult Function()? signoutEvent,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(SignoutEvent value) signoutEvent,
  }) {
    return checkLoginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(SignoutEvent value)? signoutEvent,
  }) {
    return checkLoginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(SignoutEvent value)? signoutEvent,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus(this);
    }
    return orElse();
  }
}

abstract class CheckLoginStatus implements FIrebaseEvent {
  const factory CheckLoginStatus() = _$CheckLoginStatusImpl;
}

/// @nodoc
abstract class _$$SignupEventImplCopyWith<$Res> {
  factory _$$SignupEventImplCopyWith(
          _$SignupEventImpl value, $Res Function(_$SignupEventImpl) then) =
      __$$SignupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$SignupEventImplCopyWithImpl<$Res>
    extends _$FIrebaseEventCopyWithImpl<$Res, _$SignupEventImpl>
    implements _$$SignupEventImplCopyWith<$Res> {
  __$$SignupEventImplCopyWithImpl(
      _$SignupEventImpl _value, $Res Function(_$SignupEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignupEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SignupEventImpl implements SignupEvent {
  const _$SignupEventImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'FIrebaseEvent.signupEvent(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      __$$SignupEventImplCopyWithImpl<_$SignupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
    required TResult Function(UserModel user) signupEvent,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function() signoutEvent,
  }) {
    return signupEvent(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
    TResult? Function(UserModel user)? signupEvent,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function()? signoutEvent,
  }) {
    return signupEvent?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    TResult Function(UserModel user)? signupEvent,
    TResult Function(String email, String password)? loginEvent,
    TResult Function()? signoutEvent,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(SignoutEvent value) signoutEvent,
  }) {
    return signupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(SignoutEvent value)? signoutEvent,
  }) {
    return signupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(SignoutEvent value)? signoutEvent,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(this);
    }
    return orElse();
  }
}

abstract class SignupEvent implements FIrebaseEvent {
  const factory SignupEvent(final UserModel user) = _$SignupEventImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$FIrebaseEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'FIrebaseEvent.loginEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
    required TResult Function(UserModel user) signupEvent,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function() signoutEvent,
  }) {
    return loginEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
    TResult? Function(UserModel user)? signupEvent,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function()? signoutEvent,
  }) {
    return loginEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    TResult Function(UserModel user)? signupEvent,
    TResult Function(String email, String password)? loginEvent,
    TResult Function()? signoutEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(SignoutEvent value) signoutEvent,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(SignoutEvent value)? signoutEvent,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(SignoutEvent value)? signoutEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements FIrebaseEvent {
  const factory LoginEvent(
      {required final String email,
      required final String password}) = _$LoginEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignoutEventImplCopyWith<$Res> {
  factory _$$SignoutEventImplCopyWith(
          _$SignoutEventImpl value, $Res Function(_$SignoutEventImpl) then) =
      __$$SignoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutEventImplCopyWithImpl<$Res>
    extends _$FIrebaseEventCopyWithImpl<$Res, _$SignoutEventImpl>
    implements _$$SignoutEventImplCopyWith<$Res> {
  __$$SignoutEventImplCopyWithImpl(
      _$SignoutEventImpl _value, $Res Function(_$SignoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignoutEventImpl implements SignoutEvent {
  const _$SignoutEventImpl();

  @override
  String toString() {
    return 'FIrebaseEvent.signoutEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoginStatus,
    required TResult Function(UserModel user) signupEvent,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function() signoutEvent,
  }) {
    return signoutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoginStatus,
    TResult? Function(UserModel user)? signupEvent,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function()? signoutEvent,
  }) {
    return signoutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoginStatus,
    TResult Function(UserModel user)? signupEvent,
    TResult Function(String email, String password)? loginEvent,
    TResult Function()? signoutEvent,
    required TResult orElse(),
  }) {
    if (signoutEvent != null) {
      return signoutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(SignupEvent value) signupEvent,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(SignoutEvent value) signoutEvent,
  }) {
    return signoutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(SignupEvent value)? signupEvent,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(SignoutEvent value)? signoutEvent,
  }) {
    return signoutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(SignupEvent value)? signupEvent,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(SignoutEvent value)? signoutEvent,
    required TResult orElse(),
  }) {
    if (signoutEvent != null) {
      return signoutEvent(this);
    }
    return orElse();
  }
}

abstract class SignoutEvent implements FIrebaseEvent {
  const factory SignoutEvent() = _$SignoutEventImpl;
}

/// @nodoc
mixin _$FirebaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseStateCopyWith<$Res> {
  factory $FirebaseStateCopyWith(
          FirebaseState value, $Res Function(FirebaseState) then) =
      _$FirebaseStateCopyWithImpl<$Res, FirebaseState>;
}

/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res, $Val extends FirebaseState>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FirebaseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FirebaseState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FirebaseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FirebaseState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthenticatedImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'FirebaseState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements FirebaseState {
  const factory Authenticated(final User? user) = _$AuthenticatedImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticatedImplCopyWith<$Res> {
  factory _$$UnAuthenticatedImplCopyWith(_$UnAuthenticatedImpl value,
          $Res Function(_$UnAuthenticatedImpl) then) =
      __$$UnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedImplCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$UnAuthenticatedImpl>
    implements _$$UnAuthenticatedImplCopyWith<$Res> {
  __$$UnAuthenticatedImplCopyWithImpl(
      _$UnAuthenticatedImpl _value, $Res Function(_$UnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticatedImpl implements UnAuthenticated {
  const _$UnAuthenticatedImpl();

  @override
  String toString() {
    return 'FirebaseState.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements FirebaseState {
  const factory UnAuthenticated() = _$UnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$HasErrorImplCopyWith<$Res> {
  factory _$$HasErrorImplCopyWith(
          _$HasErrorImpl value, $Res Function(_$HasErrorImpl) then) =
      __$$HasErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HasErrorImplCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$HasErrorImpl>
    implements _$$HasErrorImplCopyWith<$Res> {
  __$$HasErrorImplCopyWithImpl(
      _$HasErrorImpl _value, $Res Function(_$HasErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HasErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HasErrorImpl implements HasError {
  const _$HasErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseState.hasError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasErrorImplCopyWith<_$HasErrorImpl> get copyWith =>
      __$$HasErrorImplCopyWithImpl<_$HasErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String message) hasError,
  }) {
    return hasError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String message)? hasError,
  }) {
    return hasError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String message)? hasError,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(HasError value) hasError,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(HasError value)? hasError,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(HasError value)? hasError,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class HasError implements FirebaseState {
  const factory HasError({required final String message}) = _$HasErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HasErrorImplCopyWith<_$HasErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
