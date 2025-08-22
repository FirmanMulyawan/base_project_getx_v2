import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/splash/binding/splash_binding.dart';
import '../../features/splash/presentation/splash_screen.dart';

class AppRoute {
  static const String defaultRoute = '/';
  static const String loginScreen = '/loginScreen';
  static const String notFound = '/notFound';
  static const String registerScreen = '/registerScreen';
  static const String homeScreen = '/homeScreen';
  static const String detailChecklistScreen = '/detailChecklistScreen';
  static const String detailItemScreen = '/detailItemScreen';

  static List<GetPage> pages = [
    GetPage(
      name: defaultRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: loginScreen,
    //   page: () => const LoginScreen(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: registerScreen,
    //   page: () => const RegisterScreen(),
    //   binding: RegisterBinding(),
    // ),
    // GetPage(
    //   name: homeScreen,
    //   page: () => const HomeScreen(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: detailChecklistScreen,
    //   page: () => const DetailChecklistScreen(),
    //   binding: DetailChecklistBinding(),
    // ),
    // GetPage(
    //   name: detailItemScreen,
    //   page: () => const DetailItemScreen(),
    //   binding: DetailItemBinding(),
    // ),
  ];
}
