///
///Array é uma lista dinamica eordenada de elementos entre chaves
///

main(List<String> args) {
  print('04.1) Arrays');

  var textos = ['Fagner', 'Lorena'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');
  print(
      'condicoes[3] == null: ${condicoes[3] ?? (condicoes[0]! ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Edete', 'de', 'Oliveira'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('\n04.2) Arrays Funcoes\n');

  arrayDinamico.add(condicoes[3]!);
  arrayDinamico.insert(0, 'Lívia');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  print(arrayDinamico);
  arrayDinamico.remove('Lívia');
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();

  print('$arrayDinamico == null: ${arrayDinamico == null}');
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}');
  arrayDinamico.length = 1;
  print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  numeros = [10, 5, 1, 2.5, 7.5];
  numeros.sort();
  print(numeros);
  textos = ['Fagner', 'Lívia', 'Lorena'];
  textos.sort((b, a) => a.compareTo(b));
  print(textos);
}
