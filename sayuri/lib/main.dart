import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

Future<http.Response> enviarResposta(
    String nome, String email, String telefone, String turma) async {
  var envio = await http.post(
    Uri.parse('http://10.0.3.132:1313/save-data'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'nome:': "sayuri",
      'email:': "sayurideandarde11@gmail.com",
      'telefone:': "000-0000",
      'turma:': "3° ano INF"
    }),
  );

  print(envio.body.toString());

  return envio;
}

final TextEditingController nome = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController telefone = TextEditingController();
final TextEditingController turma = TextEditingController();

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Fluter'),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            width: 280,
            height: 80,
            child: TextField(
                controller: nome,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Nome:')),
          ),
          SizedBox(
            width: 280,
            height: 80,
            child: TextField(
                controller: email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'email:')),
          ),
          SizedBox(
            width: 280,
            height: 80,
            child: TextField(
                controller: telefone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'telefone:')),
          ),
          SizedBox(
            width: 280,
            height: 80,
            child: TextField(
                controller: turma,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'turma:')),
          ),
          ElevatedButton(
            onPressed: () {
              enviarResposta(nome.text, email.text, telefone.text, turma.text);
            },
            child: const Text('Enviar'),
          )
        ]),
      ),
    );
  }
}
