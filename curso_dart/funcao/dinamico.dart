main(List<String> args) {
  juntar (1,9);
  juntar('Bom ', 'dia!!!');
  juntar('Bom ', 7);

  //var resultado1 = juntos(' Var O valor de PI é ', 3.1415);

  String resultado = juntos(' String O valor de PI é ', 3.1415);
  print(resultado.toUpperCase());
}

dynamic juntar(dynamic a, b){
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}

String juntos(a, b){
  print(a.toString() + b.toString() + ' Dentro da função chamada');
  return a.toString() + b.toString();
}