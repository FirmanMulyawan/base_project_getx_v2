import 'package:get/get.dart';

import '../../../components/util/network.dart';
import '../presentation/splash_controller.dart';
import '../repository/splash_datasource.dart';
import '../repository/splash_repository.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(Get.find()));
    Get.lazyPut(() => SplashRepository(Get.find()));
    Get.lazyPut(() => SplashDatasource(Network.dioClient()));
  }
}
