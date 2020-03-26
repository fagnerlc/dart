import 'dart:math';

main(List<String> args) {
  int n1 = numeroAleatorio(100);
  print('n1 é $n1');

  int n2 = numeroAleatorio();
  print('n2 é $n2');

imprimirData(20,6,1989);
imprimirData(24,4);
imprimirData(25);
imprimirData();




}

int numeroAleatorio([int maximo = 10]){
  return Random().nextInt(maximo);
}

imprimirData([int dia = 15, int mes = 1, int ano = 1987]){
  print('$dia/$mes/$ano');
}