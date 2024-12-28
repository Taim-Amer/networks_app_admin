import 'package:get/get.dart';
import 'package:networks_app_admin/common/controllers/image_picker_controller.dart';
import 'package:networks_app_admin/features/authentication/controllers/signup_controller.dart';
import 'package:networks_app_admin/features/authentication/repositories/signup/repo_impl.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SignupController>(SignupController());
    Get.put<SignupRepositoryImpl>(SignupRepositoryImpl());
    Get.put<ImagePickerController>(ImagePickerController());
  }
}