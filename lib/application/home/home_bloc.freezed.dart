// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTvList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTvList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTvList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTvList value) getTvList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTvList value)? getTvList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTvList value)? getTvList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTvListImplCopyWith<$Res> {
  factory _$$GetTvListImplCopyWith(
          _$GetTvListImpl value, $Res Function(_$GetTvListImpl) then) =
      __$$GetTvListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTvListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTvListImpl>
    implements _$$GetTvListImplCopyWith<$Res> {
  __$$GetTvListImplCopyWithImpl(
      _$GetTvListImpl _value, $Res Function(_$GetTvListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTvListImpl implements GetTvList {
  const _$GetTvListImpl();

  @override
  String toString() {
    return 'HomeEvent.getTvList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTvListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTvList,
  }) {
    return getTvList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTvList,
  }) {
    return getTvList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTvList,
    required TResult orElse(),
  }) {
    if (getTvList != null) {
      return getTvList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTvList value) getTvList,
  }) {
    return getTvList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTvList value)? getTvList,
  }) {
    return getTvList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTvList value)? getTvList,
    required TResult orElse(),
  }) {
    if (getTvList != null) {
      return getTvList(this);
    }
    return orElse();
  }
}

abstract class GetTvList implements HomeEvent {
  const factory GetTvList() = _$GetTvListImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<HomeModel> get tvList => throw _privateConstructorUsedError;
  List<TrendingModel> get trendingList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<HomeModel> tvList,
      List<TrendingModel> trendingList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? tvList = null,
    Object? trendingList = null,
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
      tvList: null == tvList
          ? _value.tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      trendingList: null == trendingList
          ? _value.trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<TrendingModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<HomeModel> tvList,
      List<TrendingModel> trendingList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? tvList = null,
    Object? trendingList = null,
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
      tvList: null == tvList
          ? _value._tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      trendingList: null == trendingList
          ? _value._trendingList
          : trendingList // ignore: cast_nullable_to_non_nullable
              as List<TrendingModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required final List<HomeModel> tvList,
      required final List<TrendingModel> trendingList})
      : _tvList = tvList,
        _trendingList = trendingList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<HomeModel> _tvList;
  @override
  List<HomeModel> get tvList {
    if (_tvList is EqualUnmodifiableListView) return _tvList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvList);
  }

  final List<TrendingModel> _trendingList;
  @override
  List<TrendingModel> get trendingList {
    if (_trendingList is EqualUnmodifiableListView) return _trendingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingList);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isError: $isError, tvList: $tvList, trendingList: $trendingList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._tvList, _tvList) &&
            const DeepCollectionEquality()
                .equals(other._trendingList, _trendingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_tvList),
      const DeepCollectionEquality().hash(_trendingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final List<HomeModel> tvList,
      required final List<TrendingModel> trendingList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<HomeModel> get tvList;
  @override
  List<TrendingModel> get trendingList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
