import 'package:mabs/presentation/login_screen/login_screen.dart';
import 'package:mabs/presentation/login_screen/binding/login_binding.dart';
import 'package:mabs/presentation/set_on_about_us_screen/set_on_about_us_screen.dart';
import 'package:mabs/presentation/set_on_about_us_screen/binding/set_on_about_us_binding.dart';
import 'package:mabs/presentation/splash_screen/splash_screen.dart';
import 'package:mabs/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mabs/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:mabs/presentation/forgotpassword_screen/binding/forgotpassword_binding.dart';
import 'package:mabs/presentation/register_screen/register_screen.dart';
import 'package:mabs/presentation/register_screen/binding/register_binding.dart';
import 'package:mabs/presentation/generate_screen/generate_screen.dart';
import 'package:mabs/presentation/generate_screen/binding/generate_binding.dart';
import 'package:mabs/presentation/serverpage_container_screen/serverpage_container_screen.dart';
import 'package:mabs/presentation/serverpage_container_screen/binding/serverpage_container_binding.dart';
import 'package:mabs/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mabs/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String setOnAboutUsScreen = '/set_on_about_us_screen';

  static const String splashScreen = '/splash_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String registerScreen = '/register_screen';

  static const String generateScreen = '/generate_screen';

  static const String serverpagePage = '/serverpage_page';

  static const String serverpageContainerScreen =
      '/serverpage_container_screen';

  static const String playerlistPage = '/playerlist_page';

  static const String consolePage = '/console_page';

  static const String modsPage = '/mods_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: setOnAboutUsScreen,
      page: () => SetOnAboutUsScreen(),
      bindings: [
        SetOnAboutUsBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: forgotpasswordScreen,
      page: () => ForgotpasswordScreen(),
      bindings: [
        ForgotpasswordBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: generateScreen,
      page: () => GenerateScreen(),
      bindings: [
        GenerateBinding(),
      ],
    ),
    GetPage(
      name: serverpageContainerScreen,
      page: () => ServerpageContainerScreen(),
      bindings: [
        ServerpageContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
