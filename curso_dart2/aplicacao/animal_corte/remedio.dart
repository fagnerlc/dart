import 'dart:convert';

class Remedio {
  String marca;
  String titulo;
  String descricao;
  double valor;
  String dosagemPorte;
  String dataAplicacao;
  int qtdAplicacoes;
  List<String> cicloAplicacao;

  Remedio({
    this.marca,
    this.titulo,
    this.descricao,
    this.valor,
    this.dosagemPorte,
    this.dataAplicacao,
    this.qtdAplicacoes,
    this.cicloAplicacao,
  });

  factory Remedio.fromJson(Map<String, dynamic> json) {
    return Remedio(
      marca: json['marca'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      valor: json['valor'],
      dosagemPorte: json['dosagemPorte'],
      dataAplicacao: json['dataAplicacao'],
      qtdAplicacoes: json['qtdAplicacoes'],
      cicloAplicacao: List<String>.from(json['cicloAplicacao']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'titulo': titulo,
      'descricao': descricao,
      'valor': valor,
      'dosagemPorte': dosagemPorte,
      'dataAplicacao': dataAplicacao,
      'qtdAplicacoes': qtdAplicacoes,
      'cicloAplicacao': cicloAplicacao,
    };
  }
}

main(List<String> args) {
  String remedioJson = '''
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
''';
  Map<String, dynamic> parsedJson = jsonDecode(remedioJson);
  print('DECODE: $parsedJson\n');
}
