import 'package:flix_chat/core/extensions/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavIcon extends StatelessWidget {
  final String assetPath;
  const BottomNavIcon({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      height: context.height(0.025),
    );
  }
}
