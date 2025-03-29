import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/theme/app_colors.dart';
import 'package:flutter/widgets.dart';

class Avatar extends StatelessWidget {
  final bool isSelected;
  const Avatar({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(0.08),
      width: context.width(0.2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white,
        border: isSelected ? Border.all(color: AppColors.red, width: 3) : null,
      ),
    );
  }
}
