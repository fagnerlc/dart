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

  factory Pessoa.fromJson(Map<String, dynamic> json) {
    // List<dynamic> lista = json['filhos'] as List;
    // List<Filhos> dataLista = lista.map((e) => Filhos.fromJson(e)).toList();

    return Pessoa(
      nome: json['nome'],
      idade: json['idade'],
      parentes: Parentes.fromJson(json['parentes']),
      //tarefas: json['tarefas'].cast<String>(),  // funciona das duas maneiras, outro exemplo abaixo
      tarefas: List<String>.from(json['tarefas']),
      conjuge: Conjuge.fromJson(json['conjuge']),
      filhos: (json['filhos'] as List<dynamic>)
          .map((e) => Filhos.fromJson(e))
          .toList(),
      bens: Bens.fromJson(json['bens']),
    );
  }

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
