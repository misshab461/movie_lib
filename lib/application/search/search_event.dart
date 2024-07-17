part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getSearchItems({
    required String name,
  }) = GetSearchItems;
}
