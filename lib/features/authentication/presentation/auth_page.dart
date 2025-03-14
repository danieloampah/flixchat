import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/widgets/buttons/auth_button.dart';
import 'package:flix_chat/features/authentication/presentation/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: context.pagePadding.copyWith(bottom: context.height(0.03)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AuthButton(),
            SizedBox(height: context.height(0.03)),
            const AuthButton()
          ],
        ),
      ),
      body: Padding(
        padding: context.pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            const AuthPageTitle(),
          ],
        ),
      ),
    );
  }
}
