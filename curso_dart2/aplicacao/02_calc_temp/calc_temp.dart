String calcTemp(int minutos) {
  DateTime tempo0 = DateTime(1, 1, 1, 0, 0, 0, 0);
  DateTime tempo = DateTime(1, 1, 1, 0, 0 + minutos, 1, 2);
  Duration diferenca = Duration();
  diferenca = tempo.difference(tempo0);
  //.toStringAsFixed(2)
  return diferenca.toString();
}

main() {
  var tempo;
  tempo = calcTemp(7000);
  print(tempo);
}
