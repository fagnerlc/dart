import '03_mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String sexo, {String? idade, bool docil = false})
      : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'indefinida' : idade;
    this.sexo = (sexo == null) ? 'indefinido' : sexo;
  }

  void acao() {
    print('Late como um cao!');
  }
}
