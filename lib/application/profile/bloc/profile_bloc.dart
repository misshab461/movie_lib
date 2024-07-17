import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState(image: File(''))) {
    final picker = ImagePicker();
    on<PickImageGallery>((event, emit) async {
      final image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        emit(ProfileState(image: File(image.path)));
      }
    });
    on<PickImageCamera>((event, emit) async {
      final image = await picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        emit(ProfileState(image: File(image.path)));
      }
    });
  }
}
