import 'dart:math';

main(){
  int resultado = somar (2,3);
  resultado *= 2;

  print("O dobro do resultado é $resultado.");
  print(numerosAleatorios());
}

int somar(int a, int b){
  return a + b;
}


numerosAleatorios(){
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}