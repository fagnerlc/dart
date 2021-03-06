List<dynamic> cicloDias(DateTime data, int ciclos, int dias) {
  var datas = [];
  for (var i = 0; i < ciclos; i++) {
    datas.add('${data.day}/${data.month}/${data.year}');
    data = data.add(Duration(days: dias));
  }
  return datas;
}

main(List<String> args) {
  DateTime hoje = DateTime.now();
  var datas = cicloDias(hoje, 7, 7);
  DateTime startFilter;
  DateTime endFilter;
  startFilter = DateTime.now();
  startFilter = startFilter.subtract(Duration(days: (startFilter.weekday)));
  endFilter = startFilter.add(Duration(days: 6));
  print(datas);
  print('');
  print((DateTime.now().weekday));
  print('$startFilter');

  print('');
  print('$endFilter');
}
