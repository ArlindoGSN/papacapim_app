import 'package:flutter/material.dart';
import 'package:papacapim_app/commons/constants/app_colors.dart';
import 'package:papacapim_app/commons/constants/app_texts.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Criar Conta')),
      body: Center(
          child: Form(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Insira seu login',
                  labelText: 'Login',
                  
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O login é obrigatorio';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Como as pesssoas te chamam?',
                  labelText: 'Nome',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O nome é obrigatorio';
                  }
                  return null;
                },
              ),
              TextFormField(
                  validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8 || value.length > 16 || !value.contains(RegExp(r'[A-Z]'))) {
                    return 'A senha é obrigatorio';
                  }
                  return null;
                }, 
                decoration: InputDecoration(
                  hintText: 'Insira sua senha',
                  labelText: 'Senha',
                  fillColor: AppColors.primary,
                  focusColor: AppColors.primary,
                  hoverColor: AppColors.primary,
                
              
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8 || value.length > 16 || !value.contains(RegExp(r'[A-Z]'))) {
                    return 'A senha é obrigatorio';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Confirme sua senha', 
                  labelText: 'Confirmar Senha',
                  fillColor: AppColors.primary,
                  focusColor: AppColors.primary,
                  hoverColor: AppColors.primary,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.quaternary),
                onPressed:  (){},
               child: Text("Criar Conta", style: AppTexts.smallText.copyWith(color: AppColors.third),),
              )
            ],
          ),
          ),
        ),
      );
  }
}