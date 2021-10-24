import '02_animal.dart';

abstract class Artropodes extends Animal {
  String? sexo;
  String? fazer;
  //String insetos;
  //String aracnideos;
  //String crustaceos;

  Artropodes.insetos(this.sexo, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.fazer = 'Faz picada';
  }
  Artropodes.aracnideos(this.sexo, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.fazer = 'Faz teia';
  }
  Artropodes.crustaceos(this.sexo, idade, {docil})
      : super.invertebrados(idade, docil: docil) {
    this.fazer = 'Faz perolas';
  }

  void alimentar() {
    print('Se alimenta como um ');
  }
}
