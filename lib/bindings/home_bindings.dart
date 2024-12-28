import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networks_app_admin/features/authentication/controllers/signin_controller.dart';
import 'package:networks_app_admin/features/files/controllers/file_controller.dart';
import 'package:networks_app_admin/features/files/repositories/file_repo_impl.dart';
import 'package:networks_app_admin/features/groups/controllers/group_controller.dart';
import 'package:networks_app_admin/features/groups/repositories/group_repo_impl.dart';
import 'package:networks_app_admin/features/main/controllers/home_controller.dart';
import 'package:networks_app_admin/features/main/controllers/menu_app_controller.dart';
import 'package:networks_app_admin/features/operations/controllers/operations_controller.dart';
import 'package:networks_app_admin/features/operations/repositories/operations_repo.dart';
import 'package:networks_app_admin/features/operations/repositories/operations_repo_impl.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuAppController>(() => MenuAppController());
    Get.lazyPut<MenuController>(() => MenuController());

    Get.put<GroupRepoImpl>(GroupRepoImpl());
    Get.put<GroupController>(GroupController());

    Get.put<HomeController>(HomeController());

    Get.put<FileController>(FileController());
    Get.put<FileRepoImpl>(FileRepoImpl());

    Get.put<OperationsRepoImpl>(OperationsRepoImpl());
    Get.put<OperationsController>(OperationsController());

    //for Useer Data
    Get.put<SigninController>(SigninController());
  }
}

