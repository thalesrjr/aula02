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
              const SizedBox(
                height: 10,
              ),
              const Text("G??nero",
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
                        title: const Text("feminino"),
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
                        title: const Text("masculino"),
                        groupValue: genero,
                        onChanged: (SingingCharacter? topera) {
                          setState(() {
                            genero = topera;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(thickness: 4),

              /* TextFormFieldCustom(
                description: 'User',
                prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                label: "Nome completo",
              ),*/
              /* const SizedBox(
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
              ),*/
              const SizedBox(
                height: 5,
              ),
              TextFormFieldCustom(
                  label: "Telefone",
                  description: "(63)99999-9999",
                  prefixIcon: const Icon(
                    Icons.local_phone,
                    size: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldCustom(
                  label: "Data de Nascimento",
                  description: "00/00//0000",
                  prefixIcon: const Icon(
                    Icons.calendar_today,
                    size: 30,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: TextFormFieldCustom(
                        label: "Cidade",
                        description: "Ex: palmas",
                        prefixIcon: const Icon(
                          Icons.location_city_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.shortestSide * 0.38,
                      child: TextFormFieldCustom(
                        label: "Estado",
                        description: "Ex: To",
                        prefixIcon: const Icon(
                          Icons.add_rounded,
                          size: 1,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 4,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldCustom(
                presao: presao,
                label: "Senha",
                description: "",
                prefixIcon:
                    const Icon(Icons.key, size: 30, color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      presao = !presao;
                    });
                  },
                  icon: Icon(
                    presao ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldCustom(
                presao: presao,
                label: "Repetir Senha",
                description: "",
                prefixIcon:
                    const Icon(Icons.key, size: 30, color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      presao = !presao;
                    });
                  },
                  icon: Icon(
                    presao ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const ElevatedButtonCustom(
                description: "Criar Conta",
                vertical: 25,
                horizontal: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle, color: Colors.blue),
                  RichText(
                    text: const TextSpan(
                      text: 'Esta de acordo com os  ',
                      style: TextStyle(color: Colors.black26),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'termos e obriga????es',
                            style: TextStyle(color: Colors.blueAccent)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
