import '05_artropodes.dart';

class Abelha extends Artropodes {
  String? nome;
  String? raca;
  Abelha(this.nome, this.raca, String sexo, {String? idade, bool docil = false})
      : super.insetos(sexo, idade, docil: docil);

  void picar() {
    print('Pica como uma abelha!');
  }
}
