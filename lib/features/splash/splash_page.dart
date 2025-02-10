import 'package:flutter/material.dart';
import 'package:papacapim_app/commons/constants/app_colors.dart';
import 'package:papacapim_app/commons/constants/app_texts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        alignment: Alignment.center,
        
        decoration: BoxDecoration(
          
          gradient: LinearGradient(colors: [AppColors.quaternary, AppColors.quinary], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: const Text('Papacapim', style: AppTexts.bigText,),
      ),
    );
  }
}