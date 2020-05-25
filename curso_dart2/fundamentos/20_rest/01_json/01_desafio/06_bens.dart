import '07_veiculos.dart';
import '08_imoveis.dart';

class Bens {
  List<Veiculo> veiculos;
  List<Imoveis> imoveis;

  Bens({this.imoveis, this.veiculos});

  Bens.fromJson(Map<String, dynamic> json)
      : this(
          veiculos: (json['veiculos'] as List).map((e) => Veiculo.fromJson(e)).toList(),
          imoveis: (json['imoveis'] as List).map((e) => Imoveis.fromJson(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'imoveis': imoveis,
      'veiculos': veiculos,
    };
  }
}
