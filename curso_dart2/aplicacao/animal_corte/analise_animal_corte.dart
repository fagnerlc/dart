import 'animal.dart';
import 'dataBase.dart';

class AnaliseAnimalCorte {
  List<Map<String, dynamic>> pesoIdades = pesoIdade;
  List<double> pesos;
  Object animal = Animal();

  AnaliseAnimalCorte({
    this.pesos,
    this.animal,
    this.pesoIdades,
  });
  factory AnaliseAnimalCorte.fromJson(Map<String, dynamic> json) {
    return AnaliseAnimalCorte(
      pesos: json['pesos'],
      animal: Animal.fromJson(json['animal']),
      pesoIdades: json['pesoIdades'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'pesos': pesos,
      'animal': animal,
      'pesoIdades': pesoIdades,
    };
  }
}
