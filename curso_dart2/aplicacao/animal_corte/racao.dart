class Racao {
  String? marca;
  String? titulo;
  String? descricao;
  double? valor;
  String? dosagemPorte;

  Racao({
    this.marca,
    this.titulo,
    this.descricao,
    this.valor,
    this.dosagemPorte,
  });
  factory Racao.fromJson(Map<String, dynamic> json) {
    return Racao(
      marca: json['marca'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      valor: json['valor'],
      dosagemPorte: json['dosagemPorte'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'titulo': titulo,
      'descricao': descricao,
      'valor': valor,
      'dosagemPorte': dosagemPorte,
    };
  }
}
