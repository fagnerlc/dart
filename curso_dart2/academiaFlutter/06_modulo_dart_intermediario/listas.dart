main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach((f) => print(f));

  var lista = [
    [1, 2],
    [3, 4]
  ];
  print(lista[0][0]);
}
