import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/widgets/buttons/auth_button.dart';
import 'package:flix_chat/core/widgets/loading_indicator.dart';
import 'package:flix_chat/features/authentication/presentation/widgets/title.dart';
import 'package:flix_chat/features/authentication/provider/auth_provider.dart';
import 'package:flix_chat/features/authentication/provider/inject_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authenticationNotifier);
    final authStateController = ref.watch(authenticationNotifier.notifier);
    ref.listen(
      authenticationNotifier,
      (oldState, newState) {
        if (oldState != newState) {
          if (newState == AuthStates.success) {}
          if (newState == AuthStates.error) {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (_) => const ChooseAvatarPage()));
          }
        }
      },
    );
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: context.pagePadding.copyWith(bottom: context.height(0.03)),
        child: authState == AuthStates.loading
            ? const LoadingIndicator()
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AuthButton(
                    isApple: false,
                    onTap: () => authStateController.googleSignIn(),
                  ),
                  SizedBox(height: context.height(0.03)),
                  AuthButton(
                    isApple: true,
                    onTap: () => authStateController.appleSignIn(),
                  )
                ],
              ),
      ),
      body: Padding(
        padding: context.pagePadding,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthPageTitle(),
          ],
        ),
      ),
    );
  }
}
