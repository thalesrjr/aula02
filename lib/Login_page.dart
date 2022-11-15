import 'package:aula02/eleveted_button_custom.dart';
import 'package:aula02/text_form_Field_custom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool presao = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Bem-vindo ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Faça login para continuar',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.account_circle,
                size: 180,
                color: Colors.blueAccent,
              ),
              const SizedBox(
                height: 55,
              ),
              TextFormFieldCustom(
                description: 'User',
                prefixIcon: const Icon(Icons.person, color: Colors.blueAccent),
                label: 'User',
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormFieldCustom(
                presao: presao,
                label: "Senha",
                description: 'Senha',
                prefixIcon: const Icon(Icons.key, color: Colors.blueAccent),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      presao = !presao;
                    });
                  },
                  icon: Icon(
                    presao ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text(
                    textAlign: TextAlign.right,
                    'esqueceu a senha?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const ElevatedButtonCustom(
                description: "Login",
                vertical: 25,
                horizontal: 100,
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Ainda não tem conta? ',
                  style: TextStyle(color: Colors.black26),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'cliqui aqui para criar conta',
                        style: TextStyle(color: Colors.blueAccent)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
