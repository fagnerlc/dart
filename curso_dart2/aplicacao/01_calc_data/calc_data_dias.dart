String calcDataDias(DateTime data, int dias) {
  String novaData;
  data = data.add(Duration(days: dias));
  novaData = '${data.day}/${data.month}/${data.year}';
  return novaData;
}

main(List<String> args) {
  DateTime hoje = DateTime.now();
  DateTime outroDia = DateTime(2020, 06, 05);
  var resultado = calcDataDias(outroDia, -14);
  print('resultado: $resultado');
  print(DateTime.now());

  List list1 = [1, 2, 3];
  List list2 = [4];
  //list2.addAll(list1);
  //var newList = new List.from(list1[0])..addAll(list2);
  print(hoje.subtract(Duration(days: 1)));
  print(
      '${DateTime.now().subtract(Duration(days: 1)).year}-${DateTime.now().subtract(Duration(days: 1)).month}-${DateTime.now().subtract(Duration(days: 1)).day}');
}
