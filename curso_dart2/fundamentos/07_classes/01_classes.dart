import 'dart:math';

import '02_pessoa.dart';
import '03_usuario.dart';
import '04_conta.dart';

///
/// Classes = Objetos
/// Variaveis = atributos
/// Funcoes = metodos
/// 

void main(List<String> args) {
  print('07.0.1 Classes/Objetos');
  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Fagner';
  pessoa1.idade = 33;
  print('Nome: ${pessoa1.nome} Idade: ${pessoa1.idade}');

  Pessoa pessoa2 = new Pessoa();
  pessoa2.nome = 'Lorena';
  pessoa2.idade = 29;
  print('Nome: ${pessoa2.nome} Idade: ${pessoa2.idade}');

  // Operador em cascata permite emitir varias chamadas por meio de um objeto
  var pessoa3 = Pessoa();
  pessoa3..nome = 'Chloe'..idade = 1..info();

  // Dados inceridos pelo usuário
  Usuario usuario = new Usuario();
  usuario.usuario = 'flc@gmail.com';
  usuario.senha = '1234567';
  usuario.autenticar();

  Conta conta = Conta();
  print('Nome: ${conta.nome} N° Conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);



}





