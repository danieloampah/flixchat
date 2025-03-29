import 'package:flix_chat/core/theme/app_theme.dart';
import 'package:flix_chat/features/authentication/presentation/auth_page.dart';
import 'package:flix_chat/features/home/presentation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flix Chat',
      theme: darkTheme,
      home: const AuthPage(),
    );
  }
}
