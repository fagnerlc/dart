import 'dart:convert';
import 'remedio.dart';

class Doenca {
  String titulo;
  String descricao;
  List<Remedio> remedios;
  String inicioDoenca;
  String fimDoenca;
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
        "valor": 10.0,
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
  print(" Decode: $parsedJson");
  Doenca doenca = Doenca.fromJson(parsedJson);
  doenca.remedios.map((e) => e.cicloAplicacao.add('45'));
  doenca.remedios.map((e) => e.cicloAplicacao.add(' me65ntira'));
  doenca.remedios.map((e) => e.cicloAplicacao.add('87987 '));
  doenca.remedios.add(Remedio(cicloAplicacao: ['teste1, teste2, teste 3']));
  print(doenca);
  //print(doenca.remedios.map((e) => e.cicloAplicacao.add('Super mentira')));
  //print(doenca.remedios.map((e) => e.cicloAplicacao.add(' mentira')));
  //print(doenca.remedios.map((e) => e.cicloAplicacao));
  //print("Ciclo de aplicações: ${doenca.remedios.map((e) => e.cicloAplicacao)}");
  var text = 'teste';
  //print(doenca.remedios.map((e) => e.cicloAplicacao.add(text)));
}
