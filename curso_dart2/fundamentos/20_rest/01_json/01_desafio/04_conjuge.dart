import '03_parentes.dart';

class Conjuge {
  String nome;
  int idade;
  Parentes parentes;

  Conjuge({this.nome, this.idade, this.parentes});

  Conjuge.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          parentes: json['parentes'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
    };
  }
}
