import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExemploScaffold extends StatefulWidget {
  const ExemploScaffold({super.key});

  @override
  State<ExemploScaffold> createState() => _ExemploScaffoldState();
}

/*Exemplo de uso dos Widgets:
-Scaffold
-AppBar
-ScaffoldMessenger
-IconButton
-Icon
-Center
-Text
*/
class _ExemploScaffoldState extends State<ExemploScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo Scaffold'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Mostrar snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Esta é uma snackbar'),
                ),
              );
            },
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Componente de texto.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
