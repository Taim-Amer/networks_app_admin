import 'package:get/get.dart';
import 'package:networks_app_admin/features/files/controllers/file_controller.dart';
import 'package:networks_app_admin/features/files/repositories/file_repo_impl.dart';

class FilesBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FileController>(FileController());
    Get.put<FileRepoImpl>(FileRepoImpl());
  }
}