<<<<<<< HEAD
import 'package:flix_chat/core/theme/app_theme.dart';
import 'package:flix_chat/features/authentication/presentation/auth_page.dart';
=======
>>>>>>> fbd5917a36005833c69bdd092a841ec5bfc5b708
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
<<<<<<< HEAD
=======

>>>>>>> fbd5917a36005833c69bdd092a841ec5bfc5b708
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
<<<<<<< HEAD
    return MaterialApp(
      title: 'Flix Chat',
      theme: darkTheme,
      home: const AuthPage(),
=======
    return MaterialApp.router(
      title: 'FlixChat',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
>>>>>>> fbd5917a36005833c69bdd092a841ec5bfc5b708
    );
  }
}
