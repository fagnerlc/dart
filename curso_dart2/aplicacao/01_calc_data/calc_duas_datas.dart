int calcDuasDatas(DateTime dataMenor, DateTime dataMaior) {
  int dias;
  dias = dataMaior.difference(dataMenor).inDays;
  return dias;
}

main(List<String> args) {
  DateTime dataMenor = DateTime.now();
  DateTime dataMaior = DateTime(2020, 7, 7);
  int dias = calcDuasDatas(dataMenor, dataMaior);
  print(dias);
}
