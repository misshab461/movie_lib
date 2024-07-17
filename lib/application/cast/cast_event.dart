part of 'cast_bloc.dart';

@freezed
class CastEvent with _$CastEvent {
  const factory CastEvent.getCatList(
      {required int movieId, required String type}) = GetCatList;
}
