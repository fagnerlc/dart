String tempNow() {
  DateTime tempo = DateTime.now();
  String hora = '''
      dia: ${tempo.day} 
      mês: ${tempo.month} 
      ano: ${tempo.year} às 
      ${tempo.hour}hrs : ${tempo.minute}min : ${tempo.second} : ${tempo.microsecond}''';
  return hora;
}
