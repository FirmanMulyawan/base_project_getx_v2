import 'package:dio/dio.dart';

import '../../../components/base/base_repository.dart';
import '../../../components/util/state.dart';
import '../model/base_response.dart';
import 'splash_datasource.dart';

class SplashRepository extends BaseRepository {
  final SplashDatasource _dataSource;

  SplashRepository(this._dataSource);

  Future postUploadProfile(
      {required String filePath,
      required String filename,
      required ResponseHandler<BaseResponse?> response}) async {
    try {
      final data = await _dataSource
          .postUploadProfile(filePath, filename)
          .then(mapToData)
          .then((value) {
        final response = BaseResponse.fromJson(value);
        return response;
      });
      response.onSuccess.call(data);
      response.onDone.call();
    } on DioException catch (e, _) {
      handleDioException(e, response);
    } catch (e) {
      response.onFailed(0, e.toString());
      response.onDone.call();
    }
  }
}
