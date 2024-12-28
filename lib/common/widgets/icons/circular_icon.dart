import 'package:flutter/material.dart';
import 'package:networks_app_admin/utils/constants/colors.dart';
import 'package:networks_app_admin/utils/constants/sizes.dart';
import 'package:networks_app_admin/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.backgroundColor,
    this.color,
    this.onPressed,
    this.radius = 100,
  });

  final double? width, height, size;
  final double? radius;
  final Color? backgroundColor;
  final Color? color;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor ?? (dark ? TColors.black.withOpacity(.9) : TColors.white.withOpacity(.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
      ),
    );
  }
}
