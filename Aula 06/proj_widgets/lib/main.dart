import 'package:flutter/material.dart';
import 'package:proj_widgets/exemplo_column.dart';
import 'package:proj_widgets/exemplo_container.dart';
import 'package:proj_widgets/exemplo_expanded.dart';
import 'package:proj_widgets/exemplo_row.dart';
import 'package:proj_widgets/exemplo_scaffold.dart';
import 'package:proj_widgets/exemplo_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExemploScaffold(),
      // home: const ExemploContainer(),
      // home: const ExemploRow(),
      // home: const ExemploColumn(),
      // home: const ExemploExpandedRowColumn(),
      // home: const ExemploScroll(),
    );
  }
}
