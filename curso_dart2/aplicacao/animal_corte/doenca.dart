import 'dart:convert';

import 'remedio.dart';

class Doenca {
  String titulo;
  String descricao;
  List<Remedio> remedios;
  DateTime inicioDoenca;
  DateTime fimDoenca;
  bool infectocontagiosa;

  Doenca({
    this.titulo,
    this.descricao,
    this.remedios,
    this.inicioDoenca,
    this.fimDoenca,
    this.infectocontagiosa,
  });

  factory Doenca.fromJson(Map<String, dynamic> json) {
    return Doenca(
      titulo: json['titulo'],
      descricao: json['descricao'],
      remedios: (json['remedios'] as List<dynamic>)
          .map((e) => Remedio.fromJson(e))
          .toList(),
      inicioDoenca: json['inicioDoenca'],
      fimDoenca: json['fimDoenca'],
      infectocontagiosa: json['infectocontagiosa'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'descricao': descricao,
      'remedios': remedios,
      'inicioDoenca': inicioDoenca,
      'fimDoenca': fimDoenca,
      'infectocontagiosa': infectocontagiosa,
    };
  }
}

main(List<String> args) {
  String doencaBase = '''
  {
    "titulo" : "Raiva",
    "remedios" : [
      {
        "marca": "Tilenol",
        "titulo": "Tylenol",
        "descricao": "Contra dor de cabeça e febre",
        "valor": 10,
        "dosagemPorte": "2 ml por dia a cada 5kg",
        "dataAplicacao": "",
        "qtdAplicacoes": 7,
        "cicloAplicacao": ["apo","gdf", "slkjd" ]
      }
    ],
    "descricao" : "Doença causada pela mordida do morcego",
    "inicioDoenca" : "DateTime.now()",
    "fimDoenca" : "DateTime.now()",
    "infectocontagiosa" : false 
  }
''';
  Map<String, dynamic> parsedJson = jsonDecode(doencaBase);
  print(parsedJson);
  Doenca doenca = Doenca.fromJson(parsedJson);
  doenca.remedios.map((e) => e.cicloAplicacao);
}
