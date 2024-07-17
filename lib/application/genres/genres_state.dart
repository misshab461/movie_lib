part of 'genres_bloc.dart';

@freezed
class GenresState with _$GenresState {
  const factory GenresState({
    required bool isLoading,
    required bool isError,
    required List<GenresResult> genresList,
  }) = _Initial;

  factory GenresState.initial() => const GenresState(
        genresList: [],
        isError: false,
        isLoading: false,
      );
}
