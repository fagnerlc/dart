import 'usuario.dart';

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
  print('Nome: ${usuario.nome} Senha: ${usuario.senha}');
}

