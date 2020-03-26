import 'dart:io';
main(List<String> args) {

  final PI = 3.1415;

  stdout.write("Informe o raio: ");
  var valor = stdin.readLineSync();
  var raio = double.parse(valor);

final area = PI * raio * raio;

  print("O valor do raio é: " + area.toString()); 
}