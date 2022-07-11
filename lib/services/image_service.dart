import 'package:doxa_mobile_app/logger.dart';
import 'package:image_picker/image_picker.dart';

class ImageService {
  static final ImagePicker _picker = ImagePicker();
  static Future<XFile?> getImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 25);
    if (image != null) {
      return image;
    } else {
      return null;
    }
  }
}
