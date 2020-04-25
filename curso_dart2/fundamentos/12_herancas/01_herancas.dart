/*
  * Regras 
  - Uma Classe pode ter apenas uma herança!

  * Construtores
  - Devem obedecer a ordem dos paramentros
  - Parametros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parametros deve ser feito na classe herdeira!
*/

import '04_cao.dart';

void main(List<String> args) {
  print('12.1) Herança de atributos metodos e construtores\n');

  var cao = Cao('Chloe', 'Maltes', 'Femea');
  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  cao..dormir()..alimentar()..acao();
  print('${cao.nome} ${cao.docil ? 'esta amigavel' : 'não está amigavel'}');
}