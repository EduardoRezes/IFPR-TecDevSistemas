//Future é similar à promise do js
//chamada assíncrona
class Teste {
  Future<void> salvar() async {
    await Future.delayed(Duration(seconds: 2));
  }
}

Future<void> main() async {
  Teste t1 = Teste();
  print('teste 1');
  await t1.salvar();
  print('teste 2');
}
