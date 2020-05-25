class CaracteristicasVeiculos {
  String tipo;
  int passageiros;

  CaracteristicasVeiculos({this.tipo, this.passageiros});

  CaracteristicasVeiculos.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          passageiros: json['passageiros'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'passageiros': passageiros,
    };
  }
}
