import 'package:flutter/material.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  final perguntaSelecionada = 0;

  void responder() {
    print('Pergunta respondida!');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('🤔Perguntas')),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta3'),
            ),
          ],
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
