import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.red,
        strokeWidth: context.height(0.003),
      ),
    );
  }
}
