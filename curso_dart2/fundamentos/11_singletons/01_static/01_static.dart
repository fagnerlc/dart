/*
  * Singleton
  - É um padrao de projeto para que exista apenas uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  * Static
  - A instancia pode ser acessada diretamente.
*/

import '02_pessoa_static.dart';

void main(List<String> args) {
  print('11.1) Singletons Static\n');

  print(PessoaStatic.instance.nome);
  PessoaStatic.instance.nome = 'Fagner';
  print(PessoaStatic.instance.nome);
  var p1 = PessoaStatic.instance;
  var p2 = PessoaStatic.instance;
  p1.nome = 'Lorena';
  print(PessoaStatic.instance.nome);
  p2.nome = 'Chloe';
  print(PessoaStatic.instance.nome);
  print(identical(p1,p2));
  print(p1);
  print(p2);
  print(p2 == PessoaStatic.instance);
  
}

