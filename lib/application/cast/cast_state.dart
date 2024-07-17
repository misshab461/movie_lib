part of 'cast_bloc.dart';

@freezed
class CastState with _$CastState {
  const factory CastState({
    required bool isLoading,
    required bool hasError,
    required List<CastCrewResult> getCastResult,
  }) = _Initial;

  factory CastState.initial() => const CastState(
        isLoading: false,
        hasError: false,
        getCastResult: [],
      );
}
