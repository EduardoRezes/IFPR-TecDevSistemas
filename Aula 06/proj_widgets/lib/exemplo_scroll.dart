import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//para selecionar todas as ocorrências: ctrl + shift + l
class ExemploScroll extends StatefulWidget {
  const ExemploScroll({super.key});

  @override
  State<ExemploScroll> createState() => _ExemploScrollState();
}

/*Exemplo de uso dos Widgets:
-Scaffold
-AppBar
-ScaffoldMessenger
-IconButton
-Icon
-Text

-SingleChildScrollView
-Column
-Image
  --> lembrar de colocar no assets do pubspec.yaml
  assets:
    - lib/images/img1.jpg
    - lib/images/owl.jpg

*/
class _ExemploScrollState extends State<ExemploScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo SingleChildScrollView'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Mostrar Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Esta é uma snackbar')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Componente de texto.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 45),
            ),
            Image.asset(
              'lib/images/owl.jpg',
              height: 200,
              /*quando definimos a largura, a altura é ajustada automaticamente
                   para manter a proporção, e vice -versa*/
            ),
            const Text(
              'Componente de texto.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 45),
            ),
            const Text(
              'Componente de texto.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 45),
            ),
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              fit: BoxFit
                  .fitWidth, //largura máxima do componente onde a aimagem está inserida
            )
          ],
        ),
      ),
    );
  }
}
