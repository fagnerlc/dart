import 'dart:math';

class Pessoa{
  String nome, sobrenome;
  int _identidade;
  Pessoa(this.nome, this.sobrenome, {int identidade}){
    this._identidade = (identidade == null) ? Random().nextInt(99999999) : identidade;
  }
  get identidade => _identidade;
}

class Vendedor{

  String nome;
  List<Venda> vendas;
  Vendedor(this.nome, this.vendas);
}

class Venda{
  String produto;
  double preco;
  Venda (this.produto, this.preco);
}

main(List<String> args) {
  print('16.2.1List manipulando Objetos\n');

  Pessoa p1 = Pessoa('Fagner ','Carvalho', identidade: 12345678);
  Pessoa p2 = Pessoa('Lorena ','Carvalho', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];

  pessoas.add(Pessoa('Chloe','Carvalho'));

  for(var i = 0; i < pessoas.length; i++){
    print('for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }

  print('');

  for (var pessoa in pessoas) {
    print('for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('');

  pessoas.forEach((element) => print('forEach: ${element.nome} ${element.sobrenome} id: ${element.identidade}'));


  print('16.2.2) Ordenando Objetos\n');

  List<Vendedor> vendedores = List();
  vendedores.add(Vendedor('Fagner', [Venda('iPhoneX', 4199.99), Venda('MacBookPro', 5300.00)]));

}