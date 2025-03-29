import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flix_chat/features/home/presentation/widgets/icon.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final VoidCallback onTap;
  final String assetPath;
  const BottomNavItem({
    super.key,
    this.isActive = false,
    required this.onTap,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(context.height(0.008)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? AppColors.red : null,
          ),
          child: BottomNavIcon(assetPath: assetPath)),
    );
  }
}
