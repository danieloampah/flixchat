import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

showSnackBar({required String message, required BuildContext context}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
    color: AppColors.white,
    child: Text(
      message,
      style: context.appTextTheme.bodyMedium!
          .copyWith(color: AppColors.scaffoldBackgroundDark),
    ),
  )));
}
