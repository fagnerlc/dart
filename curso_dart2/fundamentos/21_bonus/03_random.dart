import 'dart:math';

main(List<String> args) {
  print('21.3) Random');

  var random = new Random();
  var min = 1, max = 2;

  for (var i = 0; i < 3; i++) {
    //print(random.nextInt(max + 1));
    print(min + Random().nextInt(max));
    //print(random.nextDouble().toStringAsFixed(2));
    //print(random.nextBool());
  }
  print(Utilidades.criarString(10));
}


class Utilidades{
  static const _alfabeto = 'FFFFFffffffffAAAAAAaaaaaaaGGGGGGgggggggNNNNNnnnnn';

  static String criarString(int numeroLetras){
    var random = Random(DateTime.now().millisecondsSinceEpoch);
    String resultado = '';
    for (var i = 0; i < numeroLetras; i++) {
      resultado += _alfabeto[random.nextInt(_alfabeto.length + 1)];
    }
    return resultado;
  }
}