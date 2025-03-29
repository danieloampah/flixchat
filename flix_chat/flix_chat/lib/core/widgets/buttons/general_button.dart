import 'package:figma_squircle/figma_squircle.dart';
import 'package:flix_chat/core/extensions/size_extensions.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  const GeneralButton({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: isActive
            ? AppColors.red
            : AppColors.darkGrey.withValues(alpha: 0.3),
        minWidth: context.width(1),
        height: context.height(0.070),
        shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
          cornerRadius: context.height(0.050),
        )),
        onPressed: isActive ? onTap : () {},
        child: Text(
          title,
          style: context.appTextTheme.headlineMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ));
  }
}
