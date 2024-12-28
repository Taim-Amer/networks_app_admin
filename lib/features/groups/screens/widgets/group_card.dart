import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:networks_app_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:networks_app_admin/features/files/controllers/file_controller.dart';
import 'package:networks_app_admin/features/groups/controllers/group_controller.dart';
import 'package:networks_app_admin/features/groups/screens/widgets/groups_grid.dart';
import 'package:networks_app_admin/features/main/screen/widgets/progress_line.dart';
import 'package:networks_app_admin/utils/constants/colors.dart';
import 'package:networks_app_admin/utils/constants/sizes.dart';
import 'package:networks_app_admin/utils/helpers/helper_functions.dart';
import 'package:networks_app_admin/utils/storage/cache_helper.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({super.key, required this.name, required this.groupID, required this.isOwner});

  final String name;
  final int groupID;
  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ValueListenableBuilder(
      valueListenable: GroupGrid.selectedGroupIDNotifier,
      builder: (context, selectedGroupID, _){
        final isSelected = selectedGroupID == groupID;
        return  GestureDetector(
          onTap: (){
            GroupGrid.selectedGroupIDNotifier.value = groupID;
            TCacheHelper.saveData(key: "group_id", value: groupID);
            GroupController.instance.checkOwnership(groupID);
            // GroupGrid.selectedGroupIDNotifier.value = groupID;
            FileController.instance.getFiles(groupID: groupID);
            GroupController.instance.getUsersInGroup(groupID: groupID).then((value) => TCacheHelper.saveData(key: 'group_id', value: groupID));
          },
          child: TRoundedContainer(
            showBorder: isSelected,
            borderColor: isSelected ? TColors.primary : Colors.transparent,
            backgroundColor: dark ? TColors.secondaryDarkColor : TColors.secondaryLightColor,
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TRoundedContainer(
                      height: 40,
                      width: 40,
                      backgroundColor: TColors.secondary.withOpacity(.1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/group-svgrepo-com.svg", colorFilter: const ColorFilter.mode(TColors.secondary, BlendMode.srcIn)),
                      ),
                    ),
                    TRoundedContainer(
                      backgroundColor: isOwner ? TColors.primaryColor : TColors.yellowColor,
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(isOwner ? 'Owner' : 'Member', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, fontSize: 12)),
                      )),
                    )
                  ],
                ),
                Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
                const ProgressLine(color: TColors.secondary, percentage: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("133 Members", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white70)),
                    Text("1GB Files", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
