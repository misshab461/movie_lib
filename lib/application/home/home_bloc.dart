import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/home/i_home_fazard.dart';

import '../../domain/home/trending/trending.dart';
import '../../domain/home/tv/tv.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeFazard _iHomeFazard;
  HomeBloc(this._iHomeFazard) : super(HomeState.initital()) {
    on<GetTvList>((event, emit) async {
      if (state.tvList.isNotEmpty || state.trendingList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(const HomeState(
          isLoading: true, isError: false, tvList: [], trendingList: []));

      final tvList = await _iHomeFazard.getTvList();
      final trendingList = await _iHomeFazard.getTrendingList();

      final _tvstate = tvList.fold((failure) {
        return const HomeState(
          isLoading: false,
          isError: true,
          tvList: [],
          trendingList: [],
        );
      }, (success) {
        return HomeState(
          isLoading: false,
          isError: false,
          tvList: success.results!,
          trendingList: state.trendingList,
        );
      });

      emit(_tvstate);

      final _trendingstate = trendingList.fold((failure) {
        return const HomeState(
          isLoading: false,
          isError: true,
          tvList: [],
          trendingList: [],
        );
      }, (success) {
        return HomeState(
          isLoading: false,
          isError: false,
          tvList: state.tvList,
          trendingList: success.results!,
        );
      });
      emit(_trendingstate);
    });
  }
}
