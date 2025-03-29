import 'package:flix_chat/core/extensions/index.dart';
import 'package:flutter/material.dart';

class AuthPageTitle extends StatelessWidget {
  const AuthPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.height(0.01)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Social Media for Movies',
              style: context.appTextTheme.headlineLarge,
            ),
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Text('with Ratings and Recommendations')),
        ],
      ),
    );
  }
}
