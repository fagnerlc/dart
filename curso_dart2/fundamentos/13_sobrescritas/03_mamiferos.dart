
import '02_animal.dart';

abstract class Mamiferos extends Animal{
  String sexo;
  String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil){
    this.desenvolvimento = 'Placentarios';
  }
  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil){
    this.desenvolvimento = 'Placentarios + Bolsa externa';
  }
  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil){
    this.desenvolvimento = 'Ovo';
  }

  void alimentar(){
    print('Se alimenta!');    
    print('como um');
  }
}