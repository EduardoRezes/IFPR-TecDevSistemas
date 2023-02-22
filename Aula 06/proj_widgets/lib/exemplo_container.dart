import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExemploContainer extends StatefulWidget {
  const ExemploContainer({super.key});

  @override
  State<ExemploContainer> createState() => _ExemploContainerState();
}

class _ExemploContainerState extends State<ExemploContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Container'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: Colors.cyanAccent,
          child: Text('Texto......'),
        ),
        Container(
          color: Colors.yellowAccent,
          child: Text('Teste margin'),
          height: 50,
          width: 150,
          margin: const EdgeInsets.all(10),
        ),
        Container(
          color: Colors.greenAccent,
          child: Text('Teste padding'),
          height: 50,
          width: 150,
          padding: const EdgeInsets.all(10),
        ),
        Container(
          color: Colors.redAccent,
          child: Text('Padding com tamanhos diferentes'),
          padding: const EdgeInsets.only(
            left: 10,
            right: 50,
            top: 10,
            bottom: 30,
          ),
        ),
        Container(
          color: Colors.blueAccent,
          width: 80.0,
          height: 80.0,
          padding: const EdgeInsets.all(0.0),
          child: const Center(
            child: Text('Texto'),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          width: 80.0,
          height: 80.0,
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'lib/images/img1.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          color: Colors.blue,
          width: 80.0,
          height: 80.0,
          padding: const EdgeInsets.all(8.0),
          transform: Matrix4.rotationZ(0.15),
          constraints: const BoxConstraints.expand(
            height: 120,
          ),
          alignment: Alignment.bottomRight,
          child: const Text(
            'Rotation eixo Z',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
          transform: Matrix4.rotationZ(0.15),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 3,
              style: BorderStyle.solid,
            ),
            color: Colors.lime,
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.bottomRight,
          child: const Text(
            'Rotation eixo Z',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
      ]),
    );
  }
}
