// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CastEvent {
  int get movieId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId, String type) getCatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId, String type)? getCatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId, String type)? getCatList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCatList value) getCatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCatList value)? getCatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCatList value)? getCatList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastEventCopyWith<CastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastEventCopyWith<$Res> {
  factory $CastEventCopyWith(CastEvent value, $Res Function(CastEvent) then) =
      _$CastEventCopyWithImpl<$Res, CastEvent>;
  @useResult
  $Res call({int movieId, String type});
}

/// @nodoc
class _$CastEventCopyWithImpl<$Res, $Val extends CastEvent>
    implements $CastEventCopyWith<$Res> {
  _$CastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCatListImplCopyWith<$Res>
    implements $CastEventCopyWith<$Res> {
  factory _$$GetCatListImplCopyWith(
          _$GetCatListImpl value, $Res Function(_$GetCatListImpl) then) =
      __$$GetCatListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId, String type});
}

/// @nodoc
class __$$GetCatListImplCopyWithImpl<$Res>
    extends _$CastEventCopyWithImpl<$Res, _$GetCatListImpl>
    implements _$$GetCatListImplCopyWith<$Res> {
  __$$GetCatListImplCopyWithImpl(
      _$GetCatListImpl _value, $Res Function(_$GetCatListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? type = null,
  }) {
    return _then(_$GetCatListImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCatListImpl implements GetCatList {
  const _$GetCatListImpl({required this.movieId, required this.type});

  @override
  final int movieId;
  @override
  final String type;

  @override
  String toString() {
    return 'CastEvent.getCatList(movieId: $movieId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCatListImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCatListImplCopyWith<_$GetCatListImpl> get copyWith =>
      __$$GetCatListImplCopyWithImpl<_$GetCatListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId, String type) getCatList,
  }) {
    return getCatList(movieId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId, String type)? getCatList,
  }) {
    return getCatList?.call(movieId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId, String type)? getCatList,
    required TResult orElse(),
  }) {
    if (getCatList != null) {
      return getCatList(movieId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCatList value) getCatList,
  }) {
    return getCatList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCatList value)? getCatList,
  }) {
    return getCatList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCatList value)? getCatList,
    required TResult orElse(),
  }) {
    if (getCatList != null) {
      return getCatList(this);
    }
    return orElse();
  }
}

abstract class GetCatList implements CastEvent {
  const factory GetCatList(
      {required final int movieId,
      required final String type}) = _$GetCatListImpl;

  @override
  int get movieId;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$GetCatListImplCopyWith<_$GetCatListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CastState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<CastCrewResult> get getCastResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastStateCopyWith<CastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastStateCopyWith<$Res> {
  factory $CastStateCopyWith(CastState value, $Res Function(CastState) then) =
      _$CastStateCopyWithImpl<$Res, CastState>;
  @useResult
  $Res call(
      {bool isLoading, bool hasError, List<CastCrewResult> getCastResult});
}

/// @nodoc
class _$CastStateCopyWithImpl<$Res, $Val extends CastState>
    implements $CastStateCopyWith<$Res> {
  _$CastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? getCastResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      getCastResult: null == getCastResult
          ? _value.getCastResult
          : getCastResult // ignore: cast_nullable_to_non_nullable
              as List<CastCrewResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CastStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool hasError, List<CastCrewResult> getCastResult});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CastStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? getCastResult = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      getCastResult: null == getCastResult
          ? _value._getCastResult
          : getCastResult // ignore: cast_nullable_to_non_nullable
              as List<CastCrewResult>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required final List<CastCrewResult> getCastResult})
      : _getCastResult = getCastResult;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<CastCrewResult> _getCastResult;
  @override
  List<CastCrewResult> get getCastResult {
    if (_getCastResult is EqualUnmodifiableListView) return _getCastResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getCastResult);
  }

  @override
  String toString() {
    return 'CastState(isLoading: $isLoading, hasError: $hasError, getCastResult: $getCastResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._getCastResult, _getCastResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_getCastResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CastState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final List<CastCrewResult> getCastResult}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<CastCrewResult> get getCastResult;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
