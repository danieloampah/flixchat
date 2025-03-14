import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  TextTheme get appTextTheme => Theme.of(this).textTheme;

  double width(double width) => MediaQuery.sizeOf(this).width * width;
  double height(double height) => MediaQuery.sizeOf(this).height * height;

  EdgeInsets get pagePadding =>
      EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(this).width * 0.03);
}
