/*
  * Singleton
  - É um padrao de projeto para que exista apenas uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Getter
  - A _instancia privada é acessada atraves do get.
*/


import '02_pessoa_getter.dart';

void main(List<String> args) {
  print('11.2) Singleton Getter\n');

  print(PessoaGetter.instance.nome);
  PessoaGetter.instance.nome = 'Fagner';
  print(PessoaGetter.instance.nome);
  var p1 = PessoaGetter.instance;
  var p2 = PessoaGetter.instance;
  p1.nome = 'Lorena';
  print(PessoaGetter.instance.nome);
  p2.nome = 'Chloe';
  print(PessoaGetter.instance.nome);
  print(identical(p1,p2));
  print(p2 == PessoaGetter.instance);



}

