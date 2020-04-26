import '03_mamiferos.dart';

class Cao extends Mamiferos{
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = true}) 
  : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, String sexo, {idade = 'indefinida', docil = true}) 
  : super.placentarios(sexo, idade, docil: docil);  

  @override
  void dormir(){
    print('Dorme como um cao');
  }

  void acao(){
    print('Late como um cao!');
  }
}