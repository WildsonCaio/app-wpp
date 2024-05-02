import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:message_app/components/my_button.dart';
import 'package:message_app/components/my_input.dart';
import 'package:message_app/views/home_page.dart';
import 'package:message_app/views/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ICONES
            Icon(
              Icons.message_rounded,
              color: Color.fromARGB(255, 14, 160, 89),
              size: 70,
            ),

            SizedBox(
              height: 10,
            ),

            // CAMPOS
            MyInput(
              hintText: 'Email',
              obscureText: false,
            ),
            MyInput(
              hintText: 'Senha',
              obscureText: true,
            ),
            // BOTÕES
            MyButton(
              text: 'Entrar',
              router: HomePage(),
            ),

            // BOTÃO REGISTRAR
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Não tem registro? '),
                  Text(
                    'Clique Aqui',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
