import 'package:flutter/material.dart';

class ExemploColumn extends StatefulWidget {
  const ExemploColumn({super.key});

  @override
  State<ExemploColumn> createState() => _ExemploColumnState();
}

class _ExemploColumnState extends State<ExemploColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Column'),
      ),
      body: Row(
        //solução para centralizar, já que CrossAxisAligment isn't working either in Flex,Row or Column
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment
                .center, //CrossAxisAligment isn't working either in Flex,Row or Column
            //só funciona o .stretch
            children: [
              Container(
                color: Colors.cyanAccent,
                width: 80.0,
                height: 80.0,
              ),
              Container(
                color: Colors.blueAccent,
                width: 80.0,
                height: 80.0,
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Text('Texto'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.orangeAccent,
                width: 80.0,
                height: 80.0,
                child: Image.asset('lib/images/img1.jpg', fit: BoxFit.fitWidth),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
