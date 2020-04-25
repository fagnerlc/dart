import '02_animal.dart';

class Mamiferos extends Animal{
  String sexo;

  Mamiferos(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar(){
    print('Se alimenta como mamifero!');    
  }
}