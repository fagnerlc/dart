import '03_parentes.dart';
import '04_conjuge.dart';
import '05_filhos.dart';
import '06_bens.dart';

class Pessoa {
  String nome;
  int idade;
  Parentes parentes;
  List<String> tarefas; // não é um objeto, é uma lista
  Conjuge conjuge;
  List<Filhos> filhos; // lista de objetos
  Bens bens;

  Pessoa(
      {this.nome,
      this.idade,
      this.parentes,
      this.tarefas,
      this.conjuge,
      this.filhos,
      this.bens});

  Pessoa.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          parentes: json['parentes'],
          tarefas: json['tarefas'],
          conjuge: json['conjuge'],
          filhos: json['filhos'],
          bens: json['bens'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }
}
