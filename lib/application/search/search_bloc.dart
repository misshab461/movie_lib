import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/search/i_search_fazard.dart';
import 'package:movie_lib/domain/search/search/search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchFazard _iSearchFazard;
  SearchBloc(this._iSearchFazard) : super(SearchState.initial()) {
    on<GetSearchItems>((event, emit) async {
      emit(const SearchState(
        isLoading: true,
        hasError: false,
        searchList: [],
      ));
      final searchList = await _iSearchFazard.getSearchItems(title: event.name);

      final _state = searchList.fold((failure) {
        return const SearchState(
          isLoading: false,
          hasError: true,
          searchList: [],
        );
      }, (success) {
        log(success.results.toString());
        return SearchState(
          isLoading: false,
          hasError: false,
          searchList: success.results!,
        );
      });

      emit(_state);
    });
  }
}
