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
  print('11.4) Singleton Instancia\n');

  var p1 = new PessoaInstancia(nome:'Fagner');
  print('nome: ${p1.nome} id: ${p1.identidade}');
  var p2 = PessoaInstancia(nome:'Lorena', identidade: 1234567);
  print('nome2: ${p2.nome} id: ${p2.identidade}');
  p2.nome = 'Fagner Carvalho';
  print('nome: ${p1.nome} id: ${p1.identidade}');
  print(identical(p1,p2));
  //print(p2==PessoaInstancia.instancia); // para comparar é necessário tirar o privado _ da instancia na classe pessoa

}

void main(){
  singletonFactory();
  singletonInstance();
}

