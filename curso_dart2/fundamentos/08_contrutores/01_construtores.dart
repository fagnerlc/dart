import '02_objeto.dart';
import '03_animal.dart';
import '04_pessoa.dart';
import '05_usuario.dart';

///
/// Os construtores devem ter o mesmo nome da classe!
/// Eles sao iniciados quando instaciamos as classes, podemos fazer configuracoes iniciais
///


void main(List<String> args) {
  print('08.1) Construtores\n');  

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}\n');

  Animal animal = Animal('Chloe', 'Pug');
  print('nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Fagner', 33, altura: 1.89);
  print('nome: ${pessoa.nome} idade: ${pessoa.idade}  cor: ${pessoa.cor} altura: ${pessoa.altura}');

  //dados inseridos pelo usuario
  Usuario usuario = Usuario('flc@gmail.com','1234567');
  print('usuario: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}');
  usuario.autenticar();

  Usuario admin = Usuario.admin('flc@gmail.com','1234567');
  print('admin: ${admin.user} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
  admin.autenticar();
}