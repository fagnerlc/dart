import 'dart:convert';
import 'analise_animal_corte.dart';
import 'animal.dart';

List<Map<String, dynamic>> pesoIdade = [
  {
    'pesoIdade': {
      'referencia': int,
      'peso': 40.0,
      'idade': 'String',
    },
  },
  {
    'pesoIdade': {
      'referencia': int,
      'peso': 40.0,
      'idade': 'String',
    }
  },
];

String animalCorteBase = '''
  {
    'pesoIdades': [],
    'pesos': [],
    'animal': {
      'id': '1',
      'identificador': '1',
      'tipo': 'ovino',
      'raca': 'Doper',
      'genero': 'Masculino',
      'imagens': null,
      'peso': 120,
      'altura': null,
      'comprimento': null,
      'largura': null,
      'pai': null,
      'mae': null,
      'favorito': true,
      'areaLocal': 'Pastinho',
      'doencas': null,
      'vacinas': null,
      'remedios': null,
      'racao': null,
      'vitaminas': null,
      'valorCompra': 450,
      'valorAtual': 750,
      'valorVenda': null,
      'dataNascimento': null,
      'dataCompra': null,
      'dataVenda': null,
      'dataRegistro': null,
      'dataAlteracao': null,
      'usuarioRegistro': null,
      'usuarioAlteracao': null,
    },
  }

''';

String animalBase = '''
  {
    'id': '1',
    'identificador': '1',
    'tipo': 'ovino',
    'raca': 'Doper',
    'genero': 'Masculino',
    'imagens': null,
    'peso': 120,
    'altura': null,
    'comprimento': null,
    'largura': null,
    'pai': null,
    'mae': null,
    'favorito': true,
    'areaLocal': 'Pastinho',
    'doencas': [],
    'vacinas': [],
    'remedios': [],
    'racao': [],
    'vitaminas': [],
    'valorCompra': 450,
    'valorAtual': 750,
    'valorVenda': null,
    'dataNascimento': DateTime(2020, 1, 20),
    'dataCompra': DateTime(2020, 3, 20),
    'dataVenda': null,
    'dataRegistro': null,
    'dataAlteracao': null,
    'usuarioRegistro': null,
    'usuarioAlteracao': null,
  }

''';

main(List<String> args) {
  String animalCorteBase = '''
  {
    'pesoIdades': [],
    'pesos': [],
    'animal': {
      'id': '1',
      'identificador': '1',
      'tipo': 'ovino',
      'raca': 'Doper',
      'genero': 'Masculino',
      'imagens': null,
      'peso': 120,
      'altura': null,
      'comprimento': null,
      'largura': null,
      'pai': null,
      'mae': null,
      'favorito': true,
      'areaLocal': 'Pastinho',
      'doencas': null,
      'vacinas': null,
      'remedios': null,
      'racao': null,
      'vitaminas': null,
      'valorCompra': 450,
      'valorAtual': 750,
      'valorVenda': null,
      'dataNascimento': null,
      'dataCompra': null,
      'dataVenda': null,
      'dataRegistro': null,
      'dataAlteracao': null,
      'usuarioRegistro': null,
      'usuarioAlteracao': null,
    },
  }  
''';

  String animalBase = '''
  {
    'id': '1',
    'identificador': '1',
    'tipo': 'ovino',
    'raca': 'Doper',
    'genero': 'Masculino',
    'imagens': null,
    'peso': 120,
    'altura': null,
    'comprimento': null,
    'largura': null,
    'pai': null,
    'mae': null,
    'favorito': true,
    'areaLocal': 'Pastinho',
    'doencas': null,
    'vacinas': null,
    'remedios': null,
    'racao': null,
    'vitaminas': null,
    'valorCompra': 450,
    'valorAtual': 750,
    'valorVenda': null,
    'dataNascimento': DateTime(2020, 1, 20),
    'dataCompra': DateTime(2020, 3, 20),
    'dataVenda': null,
    'dataRegistro': null,
    'dataAlteracao': null,
    'usuarioRegistro': null,
    'usuarioAlteracao': null,
  }

''';
  //Map<String, dynamic> parsedJson = jsonDecode(animalCorteBase);
  //print('parsedJson $parsedJson');
  //AnaliseAnimalCorte animalCorte = new AnaliseAnimalCorte.fromJson(parsedJson);
  //print(animalCorte);

  Map<String, dynamic> parsedJson2 = jsonDecode(animalBase);
  print('parsedJson $parsedJson2');
  Animal animal = new Animal.fromJson(parsedJson2);
  print(animal);
}
