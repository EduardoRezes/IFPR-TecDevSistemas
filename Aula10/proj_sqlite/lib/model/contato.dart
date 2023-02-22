class Contato {
  int id;
  String nome;
  String email;


  // Mapeando classe para o banco de dados
  static const tableContato = "tb_contatos";
  
  // Mapeando os atributos da classe para o banco de dados
  static const colID = "id";
  static const colNome = "nome";
  static const colEmail = "email";

  // Construtor
  Contato({this.id = 0, this.nome = "", this.email = ""});
  
  factory Contato.fromMap(Map<String, dynamic> map) {
    return Contato(
      id: map[colID],
      nome: map[colNome],
      email: map[colEmail],
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      colNome: nome,
      colEmail: email,
    };

    if (map[colID] != null) {
      map[colID] = id;
    }

    return map;
  }
}
