//param posicionais
//se não passar o valor do n2 na chamada, usa 0 como default
int soma(int n1, [int n2 = 0]) {
  return n1 + n2;
}

//parâmetros nomeados
//qdo é param nomeado, nenhum é obrigatório se tiver valor default
double calcularArea({double alt = 1, double lar = 1}) {
  return alt * lar;
}

//parâmetros nomeados
//qdo é param nomeado, required dispensa o valor default
double dividir({required double n1, required double n2}) {
  return n1 / n2;
}

//syntax sugar
//única linha de código, => substitui o return
double subtrair(double n1, double n2) => n1 - n2;

void main() {
  for (var i = 0; i < 3; i++) {
    print('hello $i');
  }

  print(soma(2, 1));
  print(soma(2));
  double area = calcularArea(alt: 3, lar: 5);
  print('A area é $area');
  double res = dividir(n1: 5, n2: 3);
  print('A divisão é $res');
  print('A subtração é ${subtrair(5, 2)}');
}
