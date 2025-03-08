import 'package:flutter/material.dart';
import 'package:test1/features/auth/login/login_screen.dart';
import 'package:test1/theme/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const LoginScreen(),
    );
  }
}
