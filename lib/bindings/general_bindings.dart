import 'package:get/get.dart';
import 'package:networks_app_admin/bindings/home_bindings.dart';
import 'package:networks_app_admin/bindings/signin_binding.dart';
import 'package:networks_app_admin/utils/router/app_router.dart';
import 'package:networks_app_admin/utils/storage/cache_helper.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    String? token = TCacheHelper.getData(key: "token");

    if (token != null) {
      Get.offAllNamed(AppRoutes.home);
      Get.put<HomeBindings>(HomeBindings());
    } else {
      Get.offAllNamed(AppRoutes.signin);
      Get.put<SigninBinding>(SigninBinding());
    }
  }
}