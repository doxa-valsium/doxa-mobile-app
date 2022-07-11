import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_upload_state.dart';

class ImageUploadCubit extends Cubit<ImageUploadState> {
  ImageUploadCubit() : super(ImageUploadInitial());
}
