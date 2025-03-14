import 'package:flix_chat/core/extensions/index.dart';
import 'package:flutter/widgets.dart';

class AvatarPageTitle extends StatelessWidget {
  const AvatarPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Choose Your Avatar',
            style: context.appTextTheme.headlineLarge,
            textAlign: TextAlign.center),
        Text(
            'Everyone has to choose an avatar when they first join. You can always update your profile photo.',
            style: context.appTextTheme.bodyLarge,
            textAlign: TextAlign.center)
      ],
    );
  }
}
