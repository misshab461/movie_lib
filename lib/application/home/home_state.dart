part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<HomeModel> tvList,
    required List<TrendingModel> trendingList,
  }) = _Initial;

  factory HomeState.initital() => const HomeState(
        isLoading: false,
        isError: false,
        tvList: [],
        trendingList: [],
      );
}
