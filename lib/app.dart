import 'package:flutter/material.dart';
import 'package:papacapim_app/pages/onbording/onbording_page.dart';
import 'package:papacapim_app/pages/register_user/register_user_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnbordingPage(),
        '/onbording': (context) => const OnbordingPage(),
        '/register': (context) => const RegisterUserPage(),
      },
    );
  }
}