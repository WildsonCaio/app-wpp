import 'package:flutter/material.dart';
import 'package:message_app/components/my_button.dart';
import 'package:message_app/components/my_input.dart';
import 'package:message_app/views/home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TITULO
            Text(
              'Cadastrar',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 10,
            ),

            // CAMPOS
            MyInput(
              hintText: 'Nome',
              obscureText: false,
            ),
            MyInput(
              hintText: 'Email',
              obscureText: false,
            ),
            MyInput(
              hintText: 'Senha',
              obscureText: true,
            ),
            MyInput(
              hintText: 'Repita sua Senha',
              obscureText: true,
            ),
            // BOTÕES
            MyButton(
              text: 'Cadastrar',
              router: HomePage(),
            ),
          ],
        ),
      ),
    );
  }
}
