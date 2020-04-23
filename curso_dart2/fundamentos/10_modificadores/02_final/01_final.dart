/*
  * Final
    Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
    Em coleções final nem todo o conteudo sera final
 */
import '02_pessoa.dart';

void main(List<String> args) {
  print('10.2) Modificadores Final\n');

  //? Objeto em queda livre leva 5s para chegar ao solo! qual a velocidade máxima do objeto?
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade maxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++){
    final indice = i;
    print('contagem: $indice');
  }
  var pessoa = Pessoa('Fagner', ['Lorena', 'Chloe']);
  pessoa.nome = 'Fagner Carvalho';
  // pessoa.familiares = []; // erro: atributo final
  print('Nome: ${pessoa.nome} Familiares: ${pessoa.familiares}');
}

