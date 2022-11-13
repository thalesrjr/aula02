import 'package:aula02/eleveted_button_custom.dart';
import 'package:aula02/text_form_Field_custom.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool presao = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Notas'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Bem-vindo ',
                textAlign: TextAlign.center,
                //  overflow: TextOverflow.ellipsis,
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
                  prefixIcon: Icon(Icons.person, color: Colors.blueAccent)),
              const SizedBox(
                height: 50,
              ),
              TextFormFieldCustom(
                presao: presao,
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
              ElevatedButtonCustom(description: "Login"),
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
