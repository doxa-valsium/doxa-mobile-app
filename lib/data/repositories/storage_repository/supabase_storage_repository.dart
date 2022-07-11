import 'dart:io';

import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/storage_exception.dart';
import 'package:doxa_mobile_app/data/repositories/storage_repository/storage_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase/supabase.dart' as supabase;

class SupabaseStorageRepository implements StorageRepository {
  @override
  Future<String> uploadImage(XFile image, ImageType imageType, User user) async {
    logger.i('SupabaseStorageRepository : uploadImage');
    if (user is Recruiter && (imageType == ImageType.companyProfile || imageType == ImageType.companyLogo)) {
      if (user.companyId == null) {
        throw StorageException('Company Id is not available!');
      } else {
        String filePath = '${user.companyId}/${imageType.toString()}-${DateTime.now()}${_getFileExtension(image.name)}';
        final response = await kSupabase.storage.from('company').upload(filePath, File(image.path));
        if (response.hasError) {
          logger.e('Error : ${response.error!.message}');
          throw StorageException(response.error!.message);
        } else {
          logger.i('Response : ${response.data}');
          final data = kSupabase.storage.from('company').getPublicUrl(filePath);
          return data.data!;
        }
      }
    }
    throw StorageException('Image upload failed!');
  }

  String _getFileExtension(String fileName) => ".${fileName.split('.').last}";
}
