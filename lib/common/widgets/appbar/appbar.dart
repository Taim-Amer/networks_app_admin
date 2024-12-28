import 'package:flutter/material.dart';
import 'package:networks_app_admin/common/widgets/buttons/back_icon.dart';
import 'package:networks_app_admin/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.showBackArrow = false});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? const BackIcon() : leadingIcon != null
              ? IconButton(
                  onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
