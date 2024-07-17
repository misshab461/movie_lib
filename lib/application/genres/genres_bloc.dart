import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/genres/genres/genres.dart';
import 'package:movie_lib/domain/genres/i_genres_fazard.dart';

part 'genres_event.dart';
part 'genres_state.dart';
part 'genres_bloc.freezed.dart';

@injectable
class GenresBloc extends Bloc<GenresEvent, GenresState> {
  final IGenresFazard _iGenreFazard;
  GenresBloc(this._iGenreFazard) : super(GenresState.initial()) {
    on<GenresEvent>((event, emit) async {
      emit(
        const GenresState(
          isLoading: true,
          isError: false,
          genresList: [],
        ),
      );

      final categoryMovies =
          await _iGenreFazard.getGenresList(genreId: event.genreId);

      final _state = categoryMovies.fold((failure) {
        return const GenresState(
          isLoading: false,
          isError: true,
          genresList: [],
        );
      }, (success) {
        return GenresState(
          isLoading: false,
          isError: false,
          genresList: success.results!,
        );
      });
      emit(_state);
    });
  }
}
