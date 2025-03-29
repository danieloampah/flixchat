import 'package:figma_squircle/figma_squircle.dart';
import 'package:flix_chat/core/constants/svg_assets.dart';

import 'package:flix_chat/core/extensions/size_extensions.dart';
import 'package:flix_chat/core/theme/app_colors.dart';

import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final bool isApple;
  final VoidCallback onTap;
  const AuthButton({
    super.key,
    required this.isApple,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        splashColor: AppColors.red.withValues(alpha: 0.1),
        color: AppColors.darkGrey,
        minWidth: context.width(1),
        height: context.height(0.070),
        shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
          cornerRadius: context.height(0.050),
        )),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.height(0.03),
              width: context.width(0.1),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                isApple ? ImagePath.apple : ImagePath.google,
              ))),
            ),
            Text(isApple ? 'Sign In with Apple' : 'Sign In with Google',
                style: context.appTextTheme.labelLarge!.copyWith(fontSize: 16)),
          ],
        ));
    // Container(
    //   alignment: Alignment.center,
    //   height: context.height(0.068),
    //   width: context.width(1),
    //   decoration: ShapeDecoration(
    //     color: AppColors.darkGrey,
    //     shape: SmoothRectangleBorder(
    //       borderRadius: SmoothBorderRadius(
    //         cornerRadius: context.height(0.050),
    //       ),
    //     ),
    //   ),
    //   child: const Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Icon(Icons.auto_fix_high),
    //       Text(
    //         'Sign In with Google',
    //         style: TextStyle(color: Colors.white),
    //       )
    //     ],
    //   ),
    // );
  }
}
