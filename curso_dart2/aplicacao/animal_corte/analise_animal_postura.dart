class AnaliseAnimalPostura {
  double ovosMes;
  double pesoOvo;

  AnaliseAnimalPostura({
    this.ovosMes,
    this.pesoOvo,
  });

  factory AnaliseAnimalPostura.fromJson(Map<String, dynamic> json) {
    return AnaliseAnimalPostura(
      ovosMes: json['ovosMes'],
      pesoOvo: json['pesoOvo'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'ovosMes': ovosMes,
      'pesoOvo': pesoOvo,
    };
  }
}
