import 'package:flix_chat/core/constants/svg_assets.dart';
import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flix_chat/features/home/presentation/widgets/bottom_nav_item.dart';
import 'package:flutter/widgets.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(0.070),
      decoration: BoxDecoration(
          color: AppColors.darkGrey.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(context.height(0.1))),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              5,
              (index) => BottomNavItem(
                    isActive: index == 1,
                    assetPath: assetPath[index],
                    onTap: () {
                      print((index));
                    },
                  ))),
    );
  }
}

final assetPath = [
  SvgAssets.home,
  SvgAssets.heart,
  SvgAssets.chat,
  SvgAssets.bell,
  SvgAssets.settings,
];
