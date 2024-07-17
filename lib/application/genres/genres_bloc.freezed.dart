// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenresEvent {
  int get genreId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int genreId) getGenreList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int genreId)? getGenreList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int genreId)? getGenreList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGenreList value) getGenreList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGenreList value)? getGenreList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGenreList value)? getGenreList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenresEventCopyWith<GenresEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresEventCopyWith<$Res> {
  factory $GenresEventCopyWith(
          GenresEvent value, $Res Function(GenresEvent) then) =
      _$GenresEventCopyWithImpl<$Res, GenresEvent>;
  @useResult
  $Res call({int genreId});
}

/// @nodoc
class _$GenresEventCopyWithImpl<$Res, $Val extends GenresEvent>
    implements $GenresEventCopyWith<$Res> {
  _$GenresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genreId = null,
  }) {
    return _then(_value.copyWith(
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGenreListImplCopyWith<$Res>
    implements $GenresEventCopyWith<$Res> {
  factory _$$GetGenreListImplCopyWith(
          _$GetGenreListImpl value, $Res Function(_$GetGenreListImpl) then) =
      __$$GetGenreListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int genreId});
}

/// @nodoc
class __$$GetGenreListImplCopyWithImpl<$Res>
    extends _$GenresEventCopyWithImpl<$Res, _$GetGenreListImpl>
    implements _$$GetGenreListImplCopyWith<$Res> {
  __$$GetGenreListImplCopyWithImpl(
      _$GetGenreListImpl _value, $Res Function(_$GetGenreListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genreId = null,
  }) {
    return _then(_$GetGenreListImpl(
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGenreListImpl with DiagnosticableTreeMixin implements GetGenreList {
  const _$GetGenreListImpl({required this.genreId});

  @override
  final int genreId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenresEvent.getGenreList(genreId: $genreId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenresEvent.getGenreList'))
      ..add(DiagnosticsProperty('genreId', genreId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenreListImpl &&
            (identical(other.genreId, genreId) || other.genreId == genreId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genreId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenreListImplCopyWith<_$GetGenreListImpl> get copyWith =>
      __$$GetGenreListImplCopyWithImpl<_$GetGenreListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int genreId) getGenreList,
  }) {
    return getGenreList(genreId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int genreId)? getGenreList,
  }) {
    return getGenreList?.call(genreId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int genreId)? getGenreList,
    required TResult orElse(),
  }) {
    if (getGenreList != null) {
      return getGenreList(genreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGenreList value) getGenreList,
  }) {
    return getGenreList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGenreList value)? getGenreList,
  }) {
    return getGenreList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGenreList value)? getGenreList,
    required TResult orElse(),
  }) {
    if (getGenreList != null) {
      return getGenreList(this);
    }
    return orElse();
  }
}

abstract class GetGenreList implements GenresEvent {
  const factory GetGenreList({required final int genreId}) = _$GetGenreListImpl;

  @override
  int get genreId;
  @override
  @JsonKey(ignore: true)
  _$$GetGenreListImplCopyWith<_$GetGenreListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenresState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<GenresResult> get genresList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenresStateCopyWith<GenresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res, GenresState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<GenresResult> genresList});
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res, $Val extends GenresState>
    implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? genresList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      genresList: null == genresList
          ? _value.genresList
          : genresList // ignore: cast_nullable_to_non_nullable
              as List<GenresResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GenresStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<GenresResult> genresList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GenresStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? genresList = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      genresList: null == genresList
          ? _value._genresList
          : genresList // ignore: cast_nullable_to_non_nullable
              as List<GenresResult>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required final List<GenresResult> genresList})
      : _genresList = genresList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<GenresResult> _genresList;
  @override
  List<GenresResult> get genresList {
    if (_genresList is EqualUnmodifiableListView) return _genresList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenresState(isLoading: $isLoading, isError: $isError, genresList: $genresList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenresState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('genresList', genresList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._genresList, _genresList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_genresList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements GenresState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final List<GenresResult> genresList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<GenresResult> get genresList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
