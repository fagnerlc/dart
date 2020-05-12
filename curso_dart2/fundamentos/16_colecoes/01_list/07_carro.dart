import '08_caracteristicas.dart';
import '09_multa.dart';

class Carro{
  String marca, modelo, placa;
  Caracteristicas caracteristica;
  List<Multa> multas;
  Carro(this.marca, this.modelo, this.placa, this.caracteristica, {List<Multa> multas}){
    this.multas = multas;
  }
}