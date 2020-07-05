import 'animal.dart';

class Gestacao {
  List<Animal> filhos;
  String tempo;
  int perda;
  int quantidadeNasce;
  Animal reprodutor;

  Gestacao({
    this.filhos,
    this.tempo,
    this.perda,
    this.quantidadeNasce,
    this.reprodutor,
  });

  factory Gestacao.fromJson(Map<String, dynamic> json) {
    return Gestacao(
      filhos: json['nome'],
      tempo: json['nome'],
      perda: json['nome'],
      quantidadeNasce: json['nome'],
      reprodutor: json['nome'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'filhos': filhos,
      'tempo': tempo,
      'perda': perda,
      'quantidadeNasce': quantidadeNasce,
      'reprodutor': reprodutor,
    };
  }
}
