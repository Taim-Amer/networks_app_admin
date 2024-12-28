import 'package:get/get.dart';
import 'package:networks_app_admin/bindings/home_bindings.dart';
import 'package:networks_app_admin/bindings/signin_binding.dart';
import 'package:networks_app_admin/bindings/signup_binding.dart';
import 'package:networks_app_admin/features/authentication/screens/signin/signin_screen.dart';
import 'package:networks_app_admin/features/authentication/screens/signup/signup_screen.dart';
import 'package:networks_app_admin/features/main/screen/main_screen.dart';

class AppRoutes {
  static const signin = '/signin';
  static const home = '/home';
  static const group = "/group";
  static const signup = "/signup";

  static List<GetPage> routes = [
    GetPage(
      name: signin,
      page: () => const SigninScreen(),
      binding: SigninBinding(),
    ),

    GetPage(
      name: home,
      page: () => const MainScreen(),
      binding: HomeBindings(),
    ),

    // GetPage(
    //   name: group,
    //   page: () => const GroupScreen(),
    //   binding: GroupBindings(),
    // ),

    GetPage(
      name: signup,
      page: () => const SignupScreen(),
      binding: SignupBinding(),
    ),
  ];
}