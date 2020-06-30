import 'analise_animal_corte.dart';
import 'dataBase.dart';
import 'dart:convert';

main(List<String> args) {
  int calcIdade(DateTime dataMenor) {
    int diasVida;
    DateTime hoje = DateTime.now();
    diasVida = hoje.difference(dataMenor).inDays;
    return diasVida;
  }

  DateTime dataNascimento = DateTime(2010, 1, 20);
  int referencia = 1;
  double peso = 70;
  int diasVida = calcIdade(dataNascimento);
  print(diasVida);

  double anos = diasVida / 365;
  print('meses $anos');
  double meses = (diasVida % 365) / 30;
  print('meses $meses');
  int dias = diasVida % 30;
  print("anos: ${anos.truncate()}  meses: ${meses.truncate()} dias: $dias");

  Map<String, dynamic> parsedJson = jsonDecode(animalCorteBase);
  print('parsedJson $parsedJson');
  AnaliseAnimalCorte animalCorte = new AnaliseAnimalCorte.fromJson(parsedJson);
  animalCorte.animal = 'Caprino';
  pesoIdade = [
    {
      'pesoIdade': {
        'referencia': referencia,
        'peso': peso,
        'idade': 1,
      },
    },
  ];

  print(pesoIdade);
}
