String calcDataDias(DateTime data, int dias){
  String novaData;
  data = data.add(Duration(days: dias));
  novaData = '${data.day}/${data.month}/${data.year}';
  return novaData;
}

main(List<String> args) {
DateTime hoje = DateTime.now();
DateTime outroDia = DateTime(2020,06,05);
  var resultado = calcDataDias(outroDia, -14);
  print('resultado: $resultado');
  
}