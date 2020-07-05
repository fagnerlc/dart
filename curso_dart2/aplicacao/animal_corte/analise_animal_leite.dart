class AnaliseAnimalLeite {
  double valorKg;
  double valorLitro;
  double litroDia;

  AnaliseAnimalLeite({
    this.valorKg,
    this.valorLitro,
    this.litroDia,
  });

  factory AnaliseAnimalLeite.fromJson(Map<String, dynamic> json) {
    return AnaliseAnimalLeite(
      valorKg: json['valorKg'],
      valorLitro: json['valorLitro'],
      litroDia: json['litroDia'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'valorKg': valorKg,
      'valorLitro': valorLitro,
      'litroDia': litroDia,
    };
  }
}
