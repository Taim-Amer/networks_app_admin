import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:networks_app_admin/app.dart';
import 'package:networks_app_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:networks_app_admin/common/widgets/loaders/loading_widget.dart';
import 'package:networks_app_admin/features/groups/controllers/group_controller.dart';
import 'package:networks_app_admin/features/groups/screens/widgets/users_in_group_list.dart';
import 'package:networks_app_admin/features/main/screen/widgets/storage_info_list.dart';
import 'package:networks_app_admin/features/groups/screens/widgets/user_in_group_card.dart';
import 'package:networks_app_admin/utils/constants/colors.dart';
import 'package:networks_app_admin/utils/constants/enums.dart';
import 'package:networks_app_admin/utils/constants/sizes.dart';
import 'package:networks_app_admin/utils/helpers/helper_functions.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      backgroundColor: dark ? TColors.secondaryDarkColor : TColors.secondaryLightColor,
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      // height: 825.h,
      height: 900.h,
      radius: 10.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Chart(),
          Obx((){
            Widget current;
            GroupController.instance.usersInGroupModel.value.response?.isEmpty ?? true ? current = const StorageInfoList() :
            GroupController.instance.getUsersInGroupState.value == RequestState.loading ?
            current = const Expanded(child: Center(child: LoadingWidget())) : current = const UsersList();
            return current;
          })
        ],
      ),
    );
  }
}
