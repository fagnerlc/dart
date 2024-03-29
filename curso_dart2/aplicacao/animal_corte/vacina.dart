class Vacina {
  String? marca;
  String? titulo;
  String? descricao;
  double? valor;
  String? dosagemPorte;
  String? dataAplicacao;
  int? qtdAplicacoes;
  List<String>? cicloAplicacao;

  Vacina({
    this.marca,
    this.titulo,
    this.descricao,
    this.valor,
    this.dosagemPorte,
    this.dataAplicacao,
    this.qtdAplicacoes,
    this.cicloAplicacao,
  });

  factory Vacina.fromJson(Map<String, dynamic> json) {
    return Vacina(
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
