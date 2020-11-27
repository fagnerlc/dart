import 'dart:math';

///
/// * Conceito:
///   - List é uma coleção dinamica e ordenada de elementos entre colchetes []
///   - forEach: Aplica a funcao anonima a cada elemento da nossa colecao
///   - Todo array é um List<?>
///

listForEach() {
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

  print(
      '\nboleanos[3]: ${(boleanas[inteiros.length]) ? 'verdadeiro' : 'falso'}');
  print('\nboleanos[3]: ${(boleanas[3]) ? 'verdadeiro' : 'falso'}');
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

  List<double> listaPrecos = List.generate(
      5,
      (index) => double.parse(
          ((index + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print('listaPrecos: $listaPrecos');

  listaPrecos.forEach((element) => print('foreach: $element'));
}

///
/// * Expand
///   - Cria uma nova lista expandindo ou concatenando os elementos
///

listExpand() {
  print('16.2) List Expand\n');
  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada =
      listFlat.expand((element) => [element, element]).toList();
  print('listFlat $listFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = List(1);
  print('$listaDinamica');
  print(listaDinamica = [1, 5, 10] + [2, 7]);
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));
  print(listaDinamica);
  print(listaDinamica = [0, ...inteiros, 15]); // operador spread (espalhar ...)
  print(listaDinamica = [
    ...[],
    ...inteiros,
    if (doubles is List<double>) ...doubles
  ]);
  print(listaDinamica = [
    ...[],
    for (var numero in numeros) numero
  ]); // var numero recebe os elementos da lista de numeros
  print(listaDinamica = [...[]]);
}

///
/// * Map:
///   - Transforma /seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
///

listMap() {
  print('16.3) List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<String> frutasMapeadas1 = frutas.map((e) => '$e').toList();
  print(frutasMapeadas1);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e; // e++
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros
      .map(incrementar)
      .map(dobro)
      .toList(); // List<int> com operacoes os elementos devem ser setados como int

  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final Function moeda =
      (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(desconto) => (valor) => desconto * valor; // closure
  List<dynamic> doublesMapeados =
      doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);
}

///
/// * Every:
///   - Faz o teste em todos os elementos com o operador logico '&&' retornando (true ou false)
///

listEvery() {
  print('16.4) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((element) => element >= 0);
  print(resultado);
  List<String> textos = List.from(['fagner', 'lorena', 'chloe']);
  resultado = textos.every((element) => element.contains('a'));
  print(resultado);
}

///
/// * Where:
///   - Filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor
///   - é chamado de Filter por outras linguagens
listWhere() {
  print('16.5) List Where\n');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print("where 01:${idades.where((e) => e is int)}");
  print("where 02:${idades.where((e) => e is int).toString()}");
  print(idades.whereType<int>());
  List<int> adultos = idades.where((int e) => e > 17).toList();
  var crianca = idades.singleWhere((int element) => element < 12,
      orElse: () =>
          0); // singleWhere tem que ter pelo menos um elemento que satisfaça a busca/
  int menor = idades.lastWhere((element) => element.toString().startsWith('1'));
  int menor1 = idades.firstWhere(
      (element) => element.toString().startsWith('0'),
      orElse: () => null);

  print('adultos: ${adultos} menor: $menor, $menor1 crianca: $crianca');

  List<dynamic> dinamico = [1, 7, 'abc'];
  print("where 07:${dinamico.where((e) => e is int)}");
}

///
/// * Reduce
///   - Compara os elementos da colecao retornando 1 unico elemento resultante!
///   - Ao interagir com os elementos o indice 0 se  torna o anterior, indice 1 se torna o atual.
listReduce() {
  print('16.6) List Reduce');

  List<int> numerosPares = List.generate(7, (index) => index * 2);
  print(numerosPares);

  //int resultado = numerosPares.reduce((anterior, atual) => anterior + atual); // o retorno será o próximo anterior

  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual; // o retorno será o próximo anterior
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('and: $and or: $or');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo =
      idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  int maisVelho =
      idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);
  print(
      'mais novo: $maisNovo mais velho: $maisVelho media: ${(media / idades.length).toStringAsFixed(1)}');
}

///
/// * Fold
///   - Compara os elementos da colecao retornando 1 unico elemento resultante!
///   - O valor inicial se torna o anterior e o indice 0 se torna o atual.
///

listFold() {
  print('16.7) List Fold\n');
  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('resultado\n');

  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado);
}

listLast() {
  print('16.8) List Last\n');
  List<int> numerosPares = List.generate(7, (index) => index * 2);
  List<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 7, 7];
  List<int> vazia = [];
  print('List Pares:$numerosPares');
  print('Número da lista por Index: ${numerosPares.lastIndexOf(4)}');
  print('Ultimo número da lista pares: ${numerosPares.last}');
  print('\n');
  print('List Números: $numeros');
  print('Número da lista por Index: ${numeros.indexOf(7)}');
  print('Número da lista por lastIndex: ${numeros.lastIndexOf(7)}');
  print('Ultimo número da lista: ${numeros.last}');
  print('\n');
  print('Lista vazia tamanho: ${vazia.length}');
  print('List Vazia: $vazia');
  print('Lista Vazia: ${vazia.lastIndexOf(numeros.length)}');
  //print('Lista Vazia: ${vazia.last}');
}

String calculaSaidaLocal(
  List<double> dia,
  double previsaoSaida,
) {
  //skip -> Retorna um Iterável que fornece todos, menos os primeiros elementos. [...]
  //lastIndexWhere ->
  //lastWhere ->
  print('\n16.9) Calcula saída:\n');
  //List<double> dia = [9, 11, 11.5, 12];
  //double previsaoSaida = 0;
  //double primeiraPausa;
  double pausa;
  double retorno;
  double intervalo;

  if (dia.length != 0) {
    print('Tamanho lista dia: ${dia.length}');
    print('Primeiro item da lista: ${dia.first != -1}');
    if (dia.first != -1 && dia.length == 1) {
      previsaoSaida = dia[0];
      previsaoSaida = previsaoSaida + 9.0;
      print('Primeira previsão de saída: ${previsaoSaida}');
    }
    print('Primeira previsão de saída: ${previsaoSaida}');

    if (dia.length == 2) {
      if (dia[1] != null) pausa = dia[1];
      print("Primeira Pausa $pausa");
    }
    if (dia.length >= 2 && dia.length % 2 == 0) {
      pausa = dia.last;
      print("Pausa 1: $pausa");
    } else if (dia.length >= 2 && dia.length % 2 == 1) {
      pausa = dia[dia.length - 2];
      print("Pausa 2: $pausa");
    }

    if (dia.length > 2 && dia.length % 2 == 1) {
      print('Primeiro Retorno: ${dia.last}');
      retorno = dia.last;
      print('Último Retorno: ${retorno}');

      print('Última Pausa: ${pausa}');
      intervalo = (retorno - pausa) * -1;
      if (intervalo < 0) intervalo = (retorno - pausa);
      print('Último Intervalo: ${intervalo}');

      if (intervalo < 1 && dia.length == 3) {
        previsaoSaida = previsaoSaida - intervalo;
        print('DENTRO DO IF!');
      } else if (intervalo > 1 && dia.length == 3) {
        previsaoSaida = previsaoSaida + intervalo - 1;
        print('DENTRO DO ELSE IF!');
      } else {
        previsaoSaida = previsaoSaida + intervalo;
        print('DENTRO DO ELSE! previsaoSaida $previsaoSaida');
      }
    } else if (dia.length > 2 && dia.length % 2 == 0) {
      print('Primeiro Retorno 2: ${dia.last}');
      retorno = dia[dia.length - 2];
      print('Último Retorno 2: ${retorno}');

      print('Última Pausa 2: ${pausa}');
      intervalo = (retorno - pausa);
      if (intervalo < 0) {
        intervalo = (retorno - pausa) * -1;
      }
      print('Último Intervalo 2: ${intervalo}');

      if (intervalo < 1 && dia.length == 3) {
        previsaoSaida = previsaoSaida - intervalo;
        print('DENTRO DO IF 2!');
      } else if (intervalo > 1 && dia.length == 3) {
        previsaoSaida = previsaoSaida + intervalo - 1;
        print('DENTRO DO ELSE IF 2!');
      } else {
        print('DENTRO DO ELSE 2!');
        print('Ultima previsão de antes saída 2: ${previsaoSaida}');
        if (intervalo > 0) {
          //previsaoSaida = previsaoSaida + intervalo;
        }
        ;
      }
    }

    print('Ultima previsão de saída: ${previsaoSaida}');
    return 'Previsão de saída: $previsaoSaida';
  } else {
    previsaoSaida = null;
    print('previsaoSaida: $previsaoSaida');
    return '$previsaoSaida';
  }
}

main(List<String> args) {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
  listLast();
  calculaSaidaLocal(
    [
      9, // Entrada
      11, // Intervalo Almoço
      11.5, // Retorno Almoço
      //13, // Pausa
      //13.5, // Retorno
      //14, // Pausa
      //15, // Retorno
      //15.5, // Pausa
      //16, // Retorno
    ],
    17.5,
  );
}
