/*
* Conceito
  - Interfaces sao modelos para implementar metodos e atributos em nossas classes

* Regras
  - Ao implementar uma interface devemos utilizar todos os metodos e atributos
  - No dart não tem sintaxe para interfaces, pede ser uma classe concreta ou abstrata!
  - Pode implementar mais de uma interface e deve sobrescrever todos metodos e atributos!
 */

import '05_candidato.dart';

void main(List<String> args) {
  print('14.1) Interfaces\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro..objetivo = 'Ganhar eleicao'
  ..objetivosPessoais()
  ..postagem = 'Vou acabar com a corrupção no Brasil'
  ..escreverPostagem()
  ..ideologiaPolitica();

}