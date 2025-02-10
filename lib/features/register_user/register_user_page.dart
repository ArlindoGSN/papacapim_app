import 'package:flutter/material.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        child: Column(
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
          TextFormField(),
        ],
      ),
      )
    );
  }
}