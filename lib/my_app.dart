import 'package:flutter/material.dart';

//import 'Login_page.dart';
import 'register_page.dart';

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
      home: const RegisterPage(), //title: 'Notas'
    );
  }
}
