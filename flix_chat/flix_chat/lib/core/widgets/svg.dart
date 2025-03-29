import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  final String path;
  final double height;
  final double width;
  const AppSvg({
    super.key,
    required this.path,
    this.height = 50,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: height,
      width: width,
      child: SvgPicture.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
