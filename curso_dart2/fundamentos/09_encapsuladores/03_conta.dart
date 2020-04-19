class Conta {
  bool alteracao = false;
  int _numeroConta;
  String _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome){
    this._nome = nome;
  }
}