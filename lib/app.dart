import 'package:flutter/material.dart';
import 'package:papacapim_app/features/onbording/onbording_page.dart';
import 'package:papacapim_app/features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: OnbordingPage(),
      ),
    );
  }
}