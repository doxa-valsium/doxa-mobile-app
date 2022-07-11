part of 'image_upload_cubit.dart';

abstract class ImageUploadState extends Equatable {
  final String? avatarUrl;
  const ImageUploadState({this.avatarUrl});

  @override
  List<Object> get props => [];
}

class ImageUploadInitial extends ImageUploadState {
  const ImageUploadInitial({String? avatarUrl}) : super(avatarUrl: avatarUrl);
}

class ImageUploading extends ImageUploadState {
  const ImageUploading({String? avatarUrl}) : super(avatarUrl: avatarUrl);
}
