import 'dart:async';

/**
 *  * Timer
 *    - O temporizador leva dois argumentos, uma duração e uma função para executar.
 *    - A duração deve ser uma instancia de Duration.
 */

int contador = 0;
String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}

main(List<String> args) {
  print('21.2) Timer\n');

  print('Tempo de Compilação (compilado) as ${tempoAgora()}');

  Timer.run(() => print('Tempo de execução (execultado) as : ${tempoAgora()}'));

  Timer(Duration(seconds: 2), () => print('Após 2 segundos! ${tempoAgora()}'));

  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    contador++;
    if (contador == 4) print('Após 4 segundos! ${tempoAgora()}');
    if (contador == 6) {
      print('Após 6 segundos! ${tempoAgora()}');
      timer.cancel(); // cancela o metodo periodic
    }
  });
}
