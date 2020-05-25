import '09_caracteristicas_veiculos.dart';
import '10_multas.dart';

class Veiculos {
  String marca;
  String modelo;
  CaracteristicasVeiculos caracteristicasVeiculos;
  List<Multas> multas;

  Veiculos(
      {this.marca, this.modelo, this.caracteristicasVeiculos, this.multas});

  Veiculos.fromJson(Map<String, dynamic> json)
      : this(
          marca: json['marca'],
          modelo: json['modelo'],
          caracteristicasVeiculos: json['caracteristicasVeiculos'],
          multas: json['multas'],
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
