import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(), //title: 'Notas'
    );
  }
}

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
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person, color: Colors.blueAccent),
                    hintText: "User",
                    label: Text('User')),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: presao,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
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
                  hintText: "Senha",
                  label: const Text('Senha'),
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
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 260,
                  ),
                  child: Text(
                    'Login'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
