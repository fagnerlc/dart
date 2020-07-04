import 'animal.dart';

class AnaliseAnimalCorte {
  List<int> idades;
  List<double> pesos;
  final List<String> datas;
  double mediaDiaGanhoPeso;

  AnaliseAnimalCorte({
    this.datas,
    this.pesos,
    this.mediaDiaGanhoPeso,
    this.idades,
  });
  factory AnaliseAnimalCorte.fromJson(Map<String, dynamic> json) {
    return AnaliseAnimalCorte(
      pesos: json['pesos'],
      idades: json['pesoIdades'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'pesos': pesos,
      'pesoIdades': idades,
    };
  }
}
