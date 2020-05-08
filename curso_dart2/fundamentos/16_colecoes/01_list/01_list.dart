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


/// 
/// * Expand
///   - Cria uma nova lista expandindo ou concatenando os elementos
/// 

listExpand(){
  print('16.2) List Expand\n');
  var lista = [
    [1,2],
    [3,4]
  ];

  List<dynamic> listFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listFlat.expand((element) => [element, element]).toList();
  print('listFlat $listFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1,2.5,5,7.25,10];
  List<int> inteiros = [1,5,10];
  List<double> doubles = [2.5,7.25];

  List<dynamic> listaDinamica = List(1);
  print('$listaDinamica');
  print(listaDinamica = [1,5,10] + [2,7]);
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));
  print(listaDinamica);
  print(listaDinamica = [0,...inteiros, 15]); // operador spread (espalhar ...)
  print(listaDinamica = [...[], ...inteiros, if(doubles is List<double>) ...doubles]);
  print(listaDinamica = [...[], for(var numero in numeros) numero]); // var numero recebe os elementos da lista de numeros
  print(listaDinamica = [...[]]);
}

/// 
/// * Map:
///   - Transforma /seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
/// 

listMap(){
  print('16.3) List Map\n');

  List<String> frutas = ['Morango','Banana', 'Tomate'];

  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<String> frutasMapeadas1 = frutas.map((e) => '$e').toList();
  print(frutasMapeadas1);

  List<int> inteiros = [1,5,10];
  var incrementar = (int e) => ++e; // e++
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList(); // List<int> com operacoes os elementos devem ser setados como int 

  print(inteirosMapeados);

  List<double> doubles = [2.75,5.5,7.25];
  final triplo = (e)  => e * 3;
  final Function moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';
  Function porcentagem(desconto) => (valor) => desconto * valor; // closure
  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);


}

///
/// * Every:
///   - Faz o teste em todos os elementos com o operador logico '&&' retornando (true ou false)
/// 

listEvery(){
  print('16.4) List Every\n');

  List<int> inteiros = [0,1,2,3,4,5];
  bool resultado = inteiros.every((element) => element >= 0);
  print(resultado);
  List<String> textos = List.from(['fagner', 'lorena', 'chloe']);
  resultado = textos.every((element) => element.contains('a'));
  print(resultado);

}

main(List<String> args) {
  listForEach();

  listExpand();

  listMap();

  listEvery();
}