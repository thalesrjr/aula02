import 'dart:js_util';

import 'package:aula02/eleveted_button_custom.dart';
import 'package:aula02/text_form_Field_custom.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { feminino, masculino }

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool presao = true;
  SingingCharacter? genero = SingingCharacter.feminino;
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
                'Registre-se ',
                textAlign: TextAlign.center,
                //  overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Preencha os dados para se Cadastrar',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              /* const Icon(
                Icons.account_circle,
                size: 180,
                color: Colors.blueAccent,
              ),*/
              TextFormFieldCustom(
                  description: "Nome ",
                  prefixIcon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  ),
                  label: "Nome Completo"),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldCustom(
                  label: "email@senai.com.br",
                  description: "E-mail",
                  prefixIcon: const Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Divider(thickness: 4),
              SizedBox(
                height: 10,
              ),
              const Text("Gênero",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: RadioListTile<SingingCharacter>(
                        value: SingingCharacter.feminino,
                        title: Text("feminino"),
                        groupValue: genero,
                        onChanged: (SingingCharacter? topera) {
                          setState(() {
                            genero = topera;
                          });
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: RadioListTile<SingingCharacter>(
                        value: SingingCharacter.masculino,
                        title: Text("masculino"),
                        groupValue: genero,
                        onChanged: (SingingCharacter? topera) {
                          setState(() {
                            genero = topera;
                          });
                        }),
                  )
                ],
              ),

              /* TextFormFieldCustom(
                description: 'User',
                prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                label: "Nome completo",
              ),*/
              const SizedBox(
                height: 50,
              ),
              TextFormFieldCustom(
                presao: presao,
                label: 'senha',
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
