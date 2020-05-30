/**
 *  * Enum
 *    - Um enumeration é usada para definir valores constantes nomeados.
 */

enum Status { indefinido, rodando, parado, pausado }

enum Time { hour, day, week, month, year }

String timeToString(Time time) {
  switch (time) {
    case Time.hour:
      return '1h';
      break;
      case Time.hour:
      return '1d';
      break;
      case Time.day:
      return '1w';
      break;
      case Time.month:
      return '1m';
      break;
      case Time.year:
      return '1y';
      break;
    default: '1h';
  }
}

main(List<String> args) {
  print('21.4) Enum\n');

  print('lenght: ${Status.values.length} values: ${Status.values}');
  print('Acessando o index: ${Status.values[1]}');
  print('Rodando: ${Status.rodando}, indice: ${Status.rodando.index}\n');

  for (var i = 0; i < Status.values.length; i++) {
    print('Indice: $i valor: ${Status.values[i]}');
  }

  print('');

  for (var value in Status.values) {
    print('indice: ${value.index} value: $value');  
  }

  print('');

  Status.values.forEach((element) => print('indice: ${element.index} valor: $element'));
}
