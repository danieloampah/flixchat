import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.height(0.005)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: context.appTextTheme.headlineSmall,
              ),
              const Icon(
                Icons.fire_extinguisher,
                color: AppColors.red,
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
