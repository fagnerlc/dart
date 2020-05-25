import '09_caracteristicas_veiculos.dart';
import '10_multas.dart';

class Veiculo {
  String marca;
  String modelo;
  CaracteristicasVeiculos caracteristicasVeiculos;
  List<Multas> multas;

  Veiculo(
      {this.marca, this.modelo, this.caracteristicasVeiculos, this.multas});

  Veiculo.fromJson(Map<String, dynamic> json)
      : this(
          marca: json['marca'],
          modelo: json['modelo'],
          caracteristicasVeiculos: CaracteristicasVeiculos.fromJson(json['caracteristicas']),
          multas: (json['multas'] as List).map((e) => Multas.fromJson(e)).toList() ,
        );

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicasVeiculos': caracteristicasVeiculos,
      'multas': multas,
    };
  }
}
