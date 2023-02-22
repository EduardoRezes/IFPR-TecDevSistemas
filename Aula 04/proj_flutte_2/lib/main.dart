import 'package:flutter/material.dart';
import 'package:proj_flutte_2/Questao.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _posicao = 0;
  String _resultados = '\nReultados:';

  @override
  Widget build(BuildContext context) {
    List<Questao> questoes = carregarQuestoes();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          // Mostra conteúdo de forma condicional
          // if com operador ternario: teste ? true : false
          body: _posicao < questoes.length
              ? Column(children: [
                  Text(
                      'Pergunta ${_posicao + 1}: ${questoes[_posicao].enunciado}'),
                  ElevatedButton(
                      onPressed: () => validarQuestao(questoes[_posicao], 'a'),
                      child: Text('${questoes[_posicao].alternativas['a']}')),
                  ElevatedButton(
                      onPressed: () => validarQuestao(questoes[_posicao], 'b'),
                      child: Text('${questoes[_posicao].alternativas['b']}')),
                  ElevatedButton(
                      onPressed: () => validarQuestao(questoes[_posicao], 'c'),
                      child: Text('${questoes[_posicao].alternativas['c']}')),
                  ElevatedButton(
                      onPressed: () => validarQuestao(questoes[_posicao], 'd'),
                      child: Text('${questoes[_posicao].alternativas['d']}')),
                ])
              : Center(child: Text(_resultados))),
    );
  }

  List<Questao> carregarQuestoes() {
    List<Questao> questoes = [];

    Questao q1 = Questao();
    q1.enunciado = 'Que animal está predominantemente na Itaipu?';
    q1.alternativas['a'] = 'Gato';
    q1.alternativas['b'] = 'Cachorro';
    q1.alternativas['c'] = 'Capivara';
    q1.alternativas['d'] = 'Lebre';
    q1.resposta = 'a';

    Questao q2 = Questao();
    q2.enunciado = 'Qual seleção de futebol possui 5 titulos?';
    q2.alternativas = {
      'a': 'Brasil',
      'b': 'Alemanha',
      'c': 'Argentina',
      'd': 'Itália',
    };
    q2.resposta = 'a';

    Questao q3 = Questao();
    q3.enunciado = 'Quem descobriu o Brasil?';
    q3.alternativas = {
      'a': 'Juscelino Kubitschek',
      'b': 'Pedro Alvares Cabral',
      'c': 'Papa João Paulo II',
      'd': 'Jair Mecias Bolsonaro',
    };
    q3.resposta = 'b';

    questoes.add(q1);
    questoes.add(q2);
    questoes.add(q3);
    return questoes;
  }

  void validarQuestao(Questao q, String resp) {
    print('Questão ${q.enunciado} - Resposta: $resp');
    late String result;
    if (q.resposta == resp) {
      result = 'Acertou';
    } else {
      result = 'Errou';
    }
    print(result);

    //indicando que ao mexer nesse atributo, o widget deve ser reconstruido
    setState(() {
      _posicao++;
      _resultados += '\n${q.enunciado} - $result';
    });
  }
}
