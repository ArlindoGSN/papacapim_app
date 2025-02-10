import 'package:flutter/material.dart';
import 'package:papacapim_app/commons/constants/app_colors.dart';
import 'package:papacapim_app/commons/constants/app_texts.dart';

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2,child: Container(color: AppColors.third, child: Image.asset('assets/images/logo.png'),),),
          Text(
            'Bora Compartilhar Ideias',
          style: AppTexts.mediumText,
          ),
          ElevatedButton(
               style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.quaternary),
            onPressed:  (){},
           child: Text("Criar Conta", style: AppTexts.smallText ,),
     
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Você já tem uma conta?"),
            TextButton(child: Text("Entrar", style: TextStyle(color: AppColors.quaternary),) ,onPressed: (){},)
          ],
        )
        ],
      ),
    );
  }
}   