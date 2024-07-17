import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/cast_crew/cast_crew/cast_crew.dart';
import 'package:movie_lib/domain/cast_crew/i_cast_crew_fazard.dart';

part 'cast_bloc.freezed.dart';
part 'cast_event.dart';
part 'cast_state.dart';

@injectable
class CastBloc extends Bloc<CastEvent, CastState> {
  final ICastCrewFazard _iCastCrewFazard;
  CastBloc(this._iCastCrewFazard) : super(CastState.initial()) {
    on<GetCatList>((event, emit) async {
      emit(
        const CastState(
          isLoading: true,
          hasError: false,
          getCastResult: [],
        ),
      );

      final castList = await _iCastCrewFazard.getCastCrewData(
        movieId: event.movieId,
        type: event.type,
      );

      final _state = castList.fold((failure) {
        log(failure.toString());
        return const CastState(
          isLoading: false,
          hasError: true,
          getCastResult: [],
        );
      }, (success) {
        log(success.cast.toString());

        if (success.cast == null) {
          log('success is null #################');
        }

        return CastState(
          isLoading: false,
          hasError: false,
          getCastResult: success.cast!,
        );
      });

      emit(_state);
    });
  }
}
