/*
  * Singleton
  - É um padrao de projeto para que exista apenas uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Factory
  - Construtor factory é usado para retornar/ manter a instancia original.
  - Construtor factory é capaz de retornar valores.
*/

import '02_pessoa_factory.dart';

singletonFactory() {
  print('11.3) Singletons Factory\n');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Fagner';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Lorena';
  print(p1.nome);

  var p2 = PessoaFactory();
  p2.nome = 'Chloe';
  print(PessoaFactory.instancia.nome);
  print(p2 == PessoaFactory.instancia);
}

singletonInstance(){

}

void main(){
  singletonFactory();
  singletonInstance();
}

