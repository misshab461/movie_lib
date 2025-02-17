part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool hasError,
    required List<SearchResult> searchList,
  }) = _Initial;

  factory SearchState.initial() => const SearchState(
        isLoading: false,
        hasError: false,
        searchList: [],
      );
}
