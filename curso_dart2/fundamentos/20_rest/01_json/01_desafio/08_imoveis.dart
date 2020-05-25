import '11_contas.dart';

class Imoveis {
  String tipo;
  String endereco;
  List<Contas> contas;

  Imoveis({this.tipo, this.endereco, this.contas});

  Imoveis.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          endereco: json['endereco'],
          contas: json['contas'],
        );

  Map<String, dynamic> toJson() {
    return {
      'marca': tipo,
      'modelo': endereco,
      'caracteristicasVeiculos': contas,
    };
  }
}
