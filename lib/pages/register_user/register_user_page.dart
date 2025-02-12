import 'package:flutter/material.dart';
import 'package:papacapim_app/commons/constants/app_colors.dart';
import 'package:papacapim_app/commons/constants/app_texts.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar Conta')),
      body: Center(
        child: Form(
          key: _keyForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              TextFormField(
                controller: _loginController,
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
                controller: _nameController,
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
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'A senha é obrigatorio';
                  }

                  if (value.length < 8 || value.length > 16) {
                    return 'A senha deve ter entre 8 e 16 caracteres';
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
                controller: _confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'A senha é obrigatorio';
                  }

                  if (value.length < 8 || value.length > 16) {
                    return 'A senha deve ter entre 8 e 16 caracteres';
                  }
                  if (value != _passwordController.text) {
                    return 'As senhas nao conferem';
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
                onPressed: () {
                  if (_keyForm.currentState!.validate()) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Conta criada com sucesso'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Erro ao criar conta'),
                      ),
                    );
                  }
                },
                child: Text(
                  "Criar Conta",
                  style: AppTexts.smallText.copyWith(color: AppColors.third),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
