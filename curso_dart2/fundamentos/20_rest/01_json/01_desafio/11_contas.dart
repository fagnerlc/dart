class Contas {
  String tipo;
  int valor;

  Contas({this.tipo, this.valor});

  Contas.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          valor: json['valor'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'valor': valor,
    };
  }
}
