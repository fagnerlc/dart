int calcDuasDatas(DateTime dataMenor, DateTime dataMaior) {
  int dias;
  Duration horas;
  DateTime dt;
  String dhoras;
  //dias = dataMaior.difference(dataMenor).inDays;
  dhoras = dataMaior.add(Duration(hours: 8)).toIso8601String();
  dt = dataMaior.add(Duration(hours: 8));
  print(' horasDt $dt');
  print(' horas $dhoras');
  //dataMaior.subtract(Duration(hours: 8));
  return dias;
}

main(List<String> args) {
  DateTime dataMenor = DateTime.now();
  DateTime dataMaior = DateTime(2021, 7, 7);
  int dias = calcDuasDatas(dataMenor, dataMaior);
  print(dias);
}
