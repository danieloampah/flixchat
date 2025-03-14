import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/widgets.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(0.1),
      width: context.width(0.2),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
    );
  }
}
