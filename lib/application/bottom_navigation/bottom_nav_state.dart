part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    required int index,
  }) = _Initial;

  factory BottomNavState.initial() => const BottomNavState(index: 0);
}
