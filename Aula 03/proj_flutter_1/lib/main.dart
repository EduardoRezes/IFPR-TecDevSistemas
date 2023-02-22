import 'package:flutter/material.dart';

void main() {
  runApp(const QuestionarioApp());
}

class QuestionarioApp extends StatelessWidget {
  const QuestionarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu time favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questionario'),
        ),
        body: Column(
          // children: [
          //   const Text('Quem descobriu o Brasil?'),
          //   ElevatedButton(
          //     onPressed: () => print('Resposta correta'),
          //     child: const Text('Pedro Alvares Cabral'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () => print('Resposta errada'),
          //     child: const Text('Dom João VI'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () => print('Resposta errada'),
          //     child: const Text('Cristóvão Colombo'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () => print('Resposta errada'),
          //     child: const Text('Cristiano Ronaldo'),
          //   ),
          // ], V1

          // V2
          // children: List.generate(perguntas.length, (index) {
          //   return Center(
          //     child: Text('Questão ${index + 1}: ${perguntas[index]}'),
          //   );
          // }),

          // V3
          children: List.generate(perguntas.length, (index) {
            return Column(children: [
              Text('Questão ${index + 1}: ${perguntas[index]}',
                  style: Theme.of(context).textTheme.bodyLarge),
              ElevatedButton(
                onPressed: () => print('Resposta correta'),
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: () => print('Resposta correta'),
                child: const Text('Resposata 2'),
              ),
              ElevatedButton(
                onPressed: () => print('Resposta correta'),
                child: const Text('Resposta 3'),
              ),
            ]);
          }),
        ),
      ),
    );
  }
}
