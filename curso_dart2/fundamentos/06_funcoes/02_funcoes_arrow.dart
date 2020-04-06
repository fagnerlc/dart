funcaoArrow(){
  print('06.02) Funcoes Arrow\n');
  String conceito() => 'Funcao Arrow com retorno implicito';

  String somarValores(int valorA, int valorB) => 'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMariorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade!' : '$nome não é maior de idade!';
  
  String calcularAreaCirculo(double raio) => 'Area do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1) ? 0.8 : (faltas == 1) ? 0.9 : 1;

  void calcularSalario(String nome, double salario, double bonus, int faltas){
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome salario: $total');
  }

  print(conceito());
  print('');
  print(somarValores(3, 4));
  print('');
  print(verificarMariorIdade('Fagner', 33));
  print('');
  print(calcularAreaCirculo(2));
  print('');
  calcularSalario('Fagner', 900, 100, 0);
  print('');
}

main(List<String> args) {
  funcaoArrow();
}