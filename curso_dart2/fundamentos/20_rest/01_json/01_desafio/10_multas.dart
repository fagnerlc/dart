class Multas {
  String descrisao;
  String tipo;
  int pontos;

  Multas({this.descrisao, this.tipo, this.pontos});

  Multas.fromJson(Map<String, dynamic> json)
      : this(
          descrisao: json['descrisao'],
          tipo: json['tipo'],
          pontos: json['pontos'],
        );

  Map<String, dynamic> toJson() {
    return {
      'marca': descrisao,
      'modelo': tipo,
      'caracteristicasVeiculos': pontos,
    };
  }
}
