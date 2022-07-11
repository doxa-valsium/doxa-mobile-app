import 'package:image_picker/image_picker.dart';

import '../../../models/models.dart';

enum ImageType {
  companyProfile,
  companyLogo,
  userProfile;

  @override
  String toString() {
    switch (this) {
      case ImageType.companyProfile:
        return 'company-profile';
      case ImageType.companyLogo:
        return 'company-logo';
      case ImageType.userProfile:
        return 'user-profile';
    }
  }
}

abstract class StorageRepository {
  Future<String> uploadImage(XFile image, ImageType imageType, User user);
}
