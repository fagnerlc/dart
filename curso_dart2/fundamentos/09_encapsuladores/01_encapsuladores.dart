import '02_usuario.dart';
import '03_conta.dart';

///
/// Encapsuladores são usados para proteger os atributos e variaveis
/// Get é usado para acessar e o Set é usado para alterar
/// Abutos ou variaveis com inderline sao privados Ex.: _senha, _saldo
/// 

void main(List<String> args) {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Fagner', '1234567');

  usuario
  ..senha = '1234567'
  ..alteracao = true
  ..senha = '123456';
  print('Nome: ${usuario.nome} Senha: ${usuario.senha}\n');

  var conta = Conta('Lorena Carvalho');
  conta
  ..deposito = 900
  ..deposito = 450
  ..saque = 550
  ..saque = 500;
  print('SALDO: ${conta.saldo}');

  print('');
  conta
  ..limite = 700
  ..alterarLimite = true
  ..limite = 1000
  ..alterarLimite = false;

  print('');

  conta
  ..saque = 950
  ..saque = 850;
  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Fagner Carvalho', limite:12500,);
  contaVip
  ..deposito = 15000
  ..saque = 15000
  ..limite = 15000
  ..saque = 15000;
  print(contaVip.informacao);

}


class teste{
  String _nome;

  String get nome => _nome;

  set nome(String nome) {
    _nome = nome;
  }
}