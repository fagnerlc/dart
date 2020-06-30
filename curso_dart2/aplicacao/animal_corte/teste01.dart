import 'dart:convert';

main() {
  String remedioJson = '''
    {
      "marca": "Tilenol",
      "titulo": "Tylenol",
      "descricao": "Contra dor de cabeça e febre",
      "valor": 10,
      "dosagemPorte": "2 ml por dia a cada 5kg",
      "dataAplicacao": "",
      "qtdAplicacoes": 7,
      "cicloAplicacao": ["apo", "gdf", "slkjd"]
    }   
  ''';
  Map<String, dynamic> parsedJson = jsonDecode(remedioJson);
  print('DECODE: $parsedJson\n');
}
