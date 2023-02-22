import 'package:flutter/material.dart';

class ExemploRow extends StatefulWidget {
  const ExemploRow({super.key});

  @override
  State<ExemploRow> createState() => _ExemploRowState();
}

class _ExemploRowState extends State<ExemploRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Row'),
      ),
      body: Column(
        //solução para centralizar, já que CrossAxisAligment isn't working either in Flex,Row or Column
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment
                .center, //CrossAxisAligment isn't working either in Flex,Row or Column
            //só funciona o .stretch
            children: [
              Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.cyanAccent,
                width: 80.0,
                height: 80.0,
              ),
              Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.blueAccent,
                width: 80.0,
                height: 80.0,
              ),
              Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.orangeAccent,
                width: 80.0,
                height: 80.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
