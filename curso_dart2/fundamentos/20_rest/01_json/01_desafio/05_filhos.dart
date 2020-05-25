class Filhos {
  String nome;
  int idade;
  List<String> vacina;

  Filhos({this.nome, this.idade, this.vacina});

  Filhos.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          vacina: json['vacinas'].cast<String>(),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'vacina': vacina,
    };
  }
}
