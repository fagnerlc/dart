import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = new PessoaFactory._construtorNomeado('indefinido');
  String nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome){
    // configurações iniciais
  }
}

class PessoaInstancia {
  static PessoaInstancia _instancia; // retirar _ para usar o singleton
  String nome;
  final int _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int identidade}){
    identidade = (identidade == null) ?Random().nextInt(99999999 +1) : identidade;
    return _instancia ??= new PessoaInstancia._construtorNomeado(nome, identidade); // retorna a instancia, se ela for nula na primeira vez ele configura o construtor nomeado
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade){
    // caso queira configurações iniciais
  }

  get identidade => _identidade;
}