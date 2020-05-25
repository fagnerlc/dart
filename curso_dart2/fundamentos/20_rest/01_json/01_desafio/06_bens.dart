import '07_veiculos.dart';
import '08_imoveis.dart';

class Bens {
  List<Imoveis> imoveis;
  List<Veiculos> veiculos;

  Bens({this.imoveis, this.veiculos});

  Bens.fromJson(Map<String, dynamic> json)
      : this(
          imoveis: json['imoveis'],
          veiculos: json['veiculos'],
        );

  Map<String, dynamic> toJson() {
    return {
      'imoveis': imoveis,
      'veiculos': veiculos,
    };
  }
}
