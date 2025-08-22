import 'package:dio/dio.dart';
import 'package:firman_app/components/ext/dio_ext.dart';

import '../../../components/base/base_dio_datasource.dart';

class SplashDatasource extends BaseDioDataSource {
  SplashDatasource(super.client);

  Future<String> postUploadProfile(String filePath, String filename) async {
    String path = 'profile/upload-profile-picture';

    var formData = FormData.fromMap({
      'profile_img_type': 'gallery',
      'profile_img': await MultipartFile.fromFile(filePath, filename: filename),
      // 'avatar':
    });

    return post<String>(path, data: formData).load();
  }

  Future<String> putEditProfile(
      String name, String email, int phoneNumber, String activeLevel) {
    String path = 'profile/edit';
    Map<String, dynamic> data = {
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
      'active_level': activeLevel,
    };
    return put<String>(path, data: data).load();
  }
}
