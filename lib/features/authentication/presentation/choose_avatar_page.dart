import 'package:flix_chat/core/extensions/index.dart';
import 'package:flix_chat/core/widgets/avatar.dart';
import 'package:flix_chat/core/widgets/buttons/general_button.dart';
import 'package:flix_chat/features/authentication/presentation/widgets/avatar_page_title.dart';
import 'package:flutter/material.dart';

class ChooseAvatarPage extends StatefulWidget {
  const ChooseAvatarPage({super.key});

  @override
  State<ChooseAvatarPage> createState() => _ChooseAvatarPageState();
}

class _ChooseAvatarPageState extends State<ChooseAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.pagePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.height(0.03),
          children: [
            const AvatarPageTitle(),
            SizedBox(
                height: context.height(0.55),
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: context.height(0.03),
                      mainAxisSpacing: context.height(0.03),
                    ),
                    itemBuilder: (context, index) {
                      return const Avatar();
                    })),
            GeneralButton(
              title: 'Select',
              isActive: true,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
