import 'package:flix_chat/core/theme/app_theme.dart';
import 'package:flix_chat/features/authentication/presentation/auth_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flix Chat',
      theme: darkTheme,
      home: const AuthPage(),
    );
  }
}
