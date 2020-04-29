/*
  * Conceito
    - Mixin permite implementar metodos e atributos de outras classes

  * Regras
    - Devem ser implementados antes das interfaces
    - Podem ser implementados a partir se uma classe concreta ou abstrata
    - Não pode implementar uma classe que estenda e extender se uma classe mixin
    - Pode implementar mais de um mixin, e nao é obrigatório usar todos metodos e atributos
    - As classes que possuem metodos iguais serão sobrescritas em rodem até a classe herdeira
  
  * ON
    - É obrigatório detectar sua classe como mixin.
    - Restringe o uso do mixin as classes que estendem ou implementam a classe declarada
*/

import '05_candidato.dart';

void main(List<String> args) {
  print('15.1) Mixin\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro..objetivo = 'Ganhar eleicao'
  ..objetivosPessoais()
  ..postagem = 'Vou acabar com a corrupção no Brasil'
  ..escreverPostagem()
  ..ideologiaPolitica()
  ..depositar = 396999
  ..prestacaoContas();


}