import 'animal.dart';

class AnaliseAnimalCorte {
  List<int> idades;
  List<double> pesos;
  List<String> datas;
  double mediaDiaGanhoPeso;
  double valorKg;

  AnaliseAnimalCorte(
      {this.idades,
      this.pesos,
      this.datas,
      this.mediaDiaGanhoPeso,
      this.valorKg});
  factory AnaliseAnimalCorte.fromJson(Map<String, dynamic> json) {
    return AnaliseAnimalCorte(
      idades: json['idades'],
      pesos: json['pesos'],
      datas: json['datas'],
      mediaDiaGanhoPeso: json['mediaDiaGanhoPeso'],
      valorKg: json['valorKg'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'idades': idades,
      'pesos': pesos,
      'datas': datas,
      'mediaDiaGanhoPeso': mediaDiaGanhoPeso,
      'valorKg': valorKg,
    };
  }
}
