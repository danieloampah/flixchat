import 'package:figma_squircle/figma_squircle.dart';
import 'package:flix_chat/core/extensions/size_extensions.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        splashColor: AppColors.red,
        color: AppColors.darkGrey,
        minWidth: context.width(1),
        height: context.height(0.068),
        shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
          cornerRadius: context.height(0.050),
        )),
        onPressed: () {},
        child: const Text(
          'Sign In with Google',
          style: TextStyle(color: Colors.white),
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
