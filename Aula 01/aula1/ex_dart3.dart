class Cliente {
  String nome = '';
  String email = '';

  Cliente(n, e) {
    nome = n;
    email = e;
  }
}

enum Nivel {
  baixo,
  medio,
  alto,
}

//posso atribuir string para os valores do enum
//dart possui extensão de classes (é diferente de herança)
extension MsgNivel on Nivel {
  String get descricao {
    switch (this) {
      case Nivel.baixo:
        return 'Baixo';
      case Nivel.medio:
        return 'Médio';
      case Nivel.alto:
        return 'Alto';
      default:
        return 'Inválido';
    }
  }
}

//herança
class ClientePJ extends Cliente {
  String cnpj = '123';
  ClientePJ() : super('Ana', 'ana@ana');
}

//extension != extends
extension ExtensaoInt on int {
  int quadrado() => this * this;
}

void main() {
  Cliente c1 = Cliente('Aldo', 'asd@asd.com'); // o uso do new é desnecessário
  print('O nome do cliente é ${c1.nome}');
  Nivel nivelAtual = Nivel.medio;
  print(nivelAtual);
  print(nivelAtual.descricao);
  int valor = 2;
  print('$valor ao quadrado é ${valor.quadrado()}');
}
