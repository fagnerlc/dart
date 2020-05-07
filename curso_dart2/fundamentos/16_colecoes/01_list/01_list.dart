import 'dart:math';

///
/// * Conceito:
///   - List é uma coleção dinamica e ordenada de elementos entre colchetes []
///   - forEach: Aplica a funcao anonima a cada elemento da nossa colecao
///   - Todo array é um List<?>
/// 


listForEach(){
  print('16.1) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) {
    print('foreach: $element');
  });
  
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  print('\nimplementacao: ${frutas.runtimeType}');

  print('\nboleanos[3]: ${(boleanas[inteiros.length]) ? 'verdadeiro' :'falso'}');
  print('\nboleanos[3]: ${(boleanas[3]) ? 'verdadeiro' :'falso'}');
  print('\inteiros[3]: ${(inteiros.length)}');
  print('\nboleanos[3]: ${(boleanas.length)}');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((element) => element == 'Banana');
  print(frutas);

  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); // camelcase letra minuscula

  List<num> numeros = List.from(inteiros)
  ..addAll(doubles)
  ..shuffle() // mistura os elementos da lista
  ..sort(); //ordena a lista de forma crescente
  print('\n$numeros');

  List<dynamic> lista = List(2); // fixa o numero de elementos
  lista = numeros.take(3).skip(1).take(2).toList();
  print('lista: $lista');

  // geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento');
  print('listaPreenchida: $listaPreenchida');

  List<String> listaGerada = List.generate(2, (index) => 'Nome ${index}');
  print('listaGerada: $listaGerada');

  List<double> listaPrecos = List.generate(5, (index) => double.parse(((index + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print('listaPrecos: $listaPrecos');

  listaPrecos.forEach((element) => print('foreach: $element'));


}


main(List<String> args) {
  listForEach();
}