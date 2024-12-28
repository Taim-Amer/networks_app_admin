import 'package:get/get.dart';
import 'package:networks_app_admin/features/authentication/controllers/signin_controller.dart';
import 'package:networks_app_admin/features/authentication/repositories/signin/repo_impl.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SigninController>(SigninController());
    Get.put<SigninRepositoryImpl>(SigninRepositoryImpl());
  }
}