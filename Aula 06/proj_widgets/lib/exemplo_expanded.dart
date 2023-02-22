import 'package:flutter/material.dart';

class ExemploExpandedRowColumn extends StatefulWidget {
  const ExemploExpandedRowColumn({super.key});

  @override
  State<ExemploExpandedRowColumn> createState() =>
      _ExemploExpandedRowColumnState();
}

class _ExemploExpandedRowColumnState extends State<ExemploExpandedRowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Expanded'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, //CrossAxisAligment isn't working either in Flex,Row or Column
        children: [
          Row(
            children: [
              Container(
                color: Colors.greenAccent,
                width: 80.0,
                height: 80.0,
              ),
              Expanded(
                child: Container(
                  color: Colors.orangeAccent,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.blueGrey,
                width: 80.0,
                height: 80.0,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.redAccent,
            width: 80.0,
            height: 80.0,
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              width: 80.0,
              height: 80.0,
              child: const Center(
                child: Text('Texto'),
              ),
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
    );
  }
}
