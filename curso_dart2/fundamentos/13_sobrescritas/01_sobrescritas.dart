/*
  * Metodos (override/sobreposicao != overload/sobrecarga)
    - Override: Temos sobrescrita dos metodos da classe pai na classe herdeira
  * Construtores
    - Super se refere ao construtor da classe herdeira
  * Classes Abstratas
    - Não podem ser instanciadas, servem como modelo
    - Metodos sem escopo devem ser sobrescritos nas classes herdeiras!
 */

import '04_cao.dart';
import '06_abelha.dart';

void main(List<String> args) {
  print('13.1) Sobrescritas de Metodos Atributos e Construtores');


  var cao = Cao.domestico('Chloe', 'Maltes','Femea');
  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  //var animal = Animal.vertebrados('0');
  print('desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
  cao..dormir()..alimentar()..reproduzir()..acao();
  print(cao);
  print('${cao.nome} ${cao.docil ? 'está amigavel' : 'não está amigavel'}');


  //? Desafio: Criar uma classe Abelha que herda de Artropodes com os construtores (insetos, aracnideos e crustaceos)
  //? que herde Animal no construtor Invertebrados!

  var abelha = Abelha('Abelhinha','Africana','Femea');
  print(abelha);
  abelha..picar();


}