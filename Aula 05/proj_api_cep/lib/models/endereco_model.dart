class EnderecoModel {
  final String cep;
  final String logradouro;
  final String localidade;
  final String uf;
  final String bairro;
  final String complemento;

  EnderecoModel({
    required this.cep,
    required this.logradouro,
    required this.localidade,
    required this.uf,
    required this.bairro,
    required this.complemento,
  });

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      cep: map['cep'],
      logradouro: map['logradouro'],
      localidade: map['localidade'],
      uf: map['uf'],
      bairro: map['bairro'],
      complemento: map['complemento'],
    );
  }
}
