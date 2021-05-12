main(List<String> args) {
//  var numeros = List.generate(10, (index) => index);
//  numeros.forEach((f) => print(f));
//
//  var lista = [
//    [1, 2],
//    [3, 4]
//  ];
//  print(lista[0][0]);

  var numero = 7;
  var fator = 49;
  var resultado;

  var listaNum = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21
  ];

  multiplicar(var nume, var fator) {
    return nume * fator;
  }

  soma(var nume, var fator) {
    return nume + fator;
  }

  dividir(var nume, var fator) {
    return nume - fator;
  }

  numeroPar() {
    for (var i = 0; i < listaNum.length; i++) {
      if ((listaNum[i] % 2) == 0) {
        print("${listaNum[i]} é numero PAR!");
      }
      if ((listaNum[i] % 2) != 0) {
        print("${listaNum[i]} é numero IMPAR!");
      }
    }
  }

  numeroPar();
  //resultado = multiplicar(numero, fator);

  print('O resultado da multiplicação é: $resultado');
}
