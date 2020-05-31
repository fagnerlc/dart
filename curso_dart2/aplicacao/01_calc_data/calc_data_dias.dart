String calcDataDias(DateTime data, int dias){
  String novaData;
  data = data.add(Duration(days: dias));
  novaData = '${data.day}/${data.month}/${data.year}';
  return novaData;
}

main(List<String> args) {
DateTime hoje = DateTime.now();
  var resultado = calcDataDias(hoje, 31);
  print('resultado: $resultado');
  
}