import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:networks_app_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:networks_app_admin/features/files/controllers/file_controller.dart';
import 'package:networks_app_admin/features/files/screens/widgets/file_requests_list.dart';
import 'package:networks_app_admin/features/operations/screens/widgets/file_operations_list.dart';
import 'package:networks_app_admin/features/operations/screens/widgets/user_operations_list.dart';
import 'package:networks_app_admin/utils/constants/colors.dart';
import 'package:networks_app_admin/utils/constants/sizes.dart';
import 'package:networks_app_admin/utils/helpers/helper_functions.dart';

Future<dynamic> showFileOperationsDialog(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text("${FileController.instance.fileVersionsModel.value.response.toString()} versions"),
          IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.close)),
        ],
      ),
      backgroundColor: dark ? TColors.darkScaffold : TColors.lightScaffold,
      content: SizedBox(
        width: 400.w,
        height: 450.h,
        child: const FileOperationsList(),
      ),
    ),
  );
}