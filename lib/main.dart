import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networks_app_admin/app.dart';
import 'package:networks_app_admin/utils/storage/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TCacheHelper.init();

  Get.testMode = true;
  runApp(const App());
}
