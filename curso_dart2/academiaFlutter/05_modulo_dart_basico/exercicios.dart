void main() {
  print('Exercício 1:');
  String nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';
  print(nome.length);

  print('\nExercício 2:');
  List<String> nomes = [
    'Fagner',
    'Lorena',
    'Fabiano',
    'Livia',
    'Edete',
    'Ney',
    'Lucas',
    'Robson',
    'Merivone',
    'Isabela',
  ];
  int index = 0;
  while (index < nomes.length) {
    print('Sejá bem vindo ${nomes[index]}');
    index++;
  }
  print('\nExercício 3:');

  String nome2 =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';
  print(nome2.split(' ').length);

  print('\nExercício 4:');
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];
  List paciente1;
  for (var i = 0; i < paciente.length; i++) {
    paciente1 = paciente[i].split('|');
    print('${paciente1[0]} tem ${paciente1[1]} anos');
  }

  print('\nExercício 5:');
  List paciente3 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];
  paciente3.removeRange(3, 5);
  print(paciente3);

  print('\nExercício 6:');
  List paciente4 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  for (var i = 0; i < paciente4.length; i++) {
    paciente1 = paciente4[i].split('|');
    if (int.parse(paciente1[1]) < 18) {
      //paciente4.removeAt(i);
      paciente4.removeWhere((i) => i == '${paciente1[0]}|${paciente1[1]}');
    }
    paciente4.remove(i);
  }
  print('$paciente4');
}
