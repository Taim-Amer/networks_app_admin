import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networks_app_admin/common/widgets/loaders/loading_widget.dart';
import 'package:networks_app_admin/features/files/controllers/file_controller.dart';
import 'package:networks_app_admin/features/files/screens/widgets/files_table.dart';
import 'package:networks_app_admin/features/main/screen/widgets/header.dart';
import 'package:networks_app_admin/responsive.dart';
import 'package:networks_app_admin/features/groups/screens/widgets/groups_grid.dart';
import 'package:networks_app_admin/features/main/screen/widgets/storage_details.dart';
import 'package:networks_app_admin/utils/constants/enums.dart';
import 'package:networks_app_admin/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: TSizes.defaultSpace),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyGroups(),
                      const SizedBox(height: TSizes.defaultSpace),
                      const FilesTable(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: TSizes.defaultSpace),
                      if (Responsive.isMobile(context)) const StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: TSizes.defaultSpace),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
