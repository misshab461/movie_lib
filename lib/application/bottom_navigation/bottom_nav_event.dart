part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavEvent with _$BottomNavEvent {
  const factory BottomNavEvent.pressed({required int index}) = Pressed;
}
