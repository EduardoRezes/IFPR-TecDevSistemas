void main() {
  List<String> nomes = ['a', 'b', 'c'];
  //var nomes = ['a','b','c'];
  nomes.add('d');
  print(nomes);
  print(nomes.length);
  print(nomes.elementAt(1));
  print(nomes[1]);

  //Ao contrário do List, o Set não armazena valores repetidos
  Set<int> valores = {1, 2, 3};
  print(valores);
  print(valores.length);
  print(valores.contains(2));
  print(valores is Set);

  Map<String, double> notas = {'Pedro': 6.5, 'Lucas': 7.9, 'Ana': 7.4};
  for (var chave in notas.keys) {
    print('chave = $chave');
  }
  for (var val in notas.values) {
    print('valor = $val');
  }
  for (var registro in notas.entries) {
    print('${registro.key} = ${registro.value}');
  }

  //tipo dinâmico
  dynamic x = 1;
  x = 'a';

  //constantes
  final y = 3;
  const z = 5;
}
