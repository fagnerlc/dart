import 'analise_animal_corte.dart';
import 'analise_animal_leite.dart';
import 'analise_animal_postura.dart';
import 'area_local.dart';
import 'doenca.dart';
import 'fazenda.dart';
import 'gestacao.dart';
import 'racao.dart';
import 'vacina.dart';
import 'vitamina.dart';

class Animal {
  int? id;
  String? identificador;
  // bovino / bufalinos / caprino / ovino / suínos / equinos / muar (mulas) / asinino (jumentos) / canino / felino / aves / peixes /
  final String? tipo;
  final String? raca;
  final String? genero;
  final String? imagens;
  final double? peso;
  final double? altura;
  final double? comprimento;
  final double? largura;
  final Animal? pai;
  final Animal? mae;
  final List<Gestacao>? gestacao;
  final List<AnaliseAnimalCorte>? analiseCorte;
  final List<AnaliseAnimalLeite>? analiseLeite;
  final List<AnaliseAnimalPostura>? analisePostura;
  final bool? favorito;
  final AreaLocal? areaLocal;
  final Fazenda? fazenda;
  final List<Doenca>? doencas;
  final List<Vacina>? vacinas;
  final List<Racao>? racao;
  final List<Vitamina>? vitaminas;
  final double? valorKg;
  final double? valorCompra;
  final double? valorAtual;
  final double? valorVenda;
  final double? lucroAnimal;
  final String? dataNascimento;
  final String? dataCompra;
  final String? dataVenda;
  final String? dataRegistro;
  final String? dataAlteracao;
  final String? usuarioRegistro;
  final String? usuarioAlteracao;

  Animal({
    this.id,
    this.identificador,
    this.tipo,
    this.raca,
    this.genero,
    this.imagens,
    this.peso,
    this.altura,
    this.comprimento,
    this.largura,
    this.pai,
    this.mae,
    this.gestacao,
    this.analiseCorte,
    this.analiseLeite,
    this.analisePostura,
    this.favorito,
    this.areaLocal,
    this.fazenda,
    this.doencas,
    this.vacinas,
    this.racao,
    this.vitaminas,
    this.valorKg,
    this.valorCompra,
    this.valorAtual,
    this.valorVenda,
    this.lucroAnimal,
    this.dataNascimento,
    this.dataCompra,
    this.dataVenda,
    this.dataRegistro,
    this.dataAlteracao,
    this.usuarioRegistro,
    this.usuarioAlteracao,
  });

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      id: json['id'],
      identificador: json['identificador'],
      tipo: json['tipo'],
      raca: json['raca'],
      genero: json['genero'],
      imagens: json['imagens'],
      peso: json['peso'],
      altura: json['altura'],
      comprimento: json['comprimento'],
      largura: json['largura'],
      pai: Animal.fromJson(json['animal']),
      mae: Animal.fromJson(json['animal']),
      gestacao: (json['gestacao'] as List<dynamic>)
          .map((e) => Gestacao.fromJson(e))
          .toList(),
      analiseCorte: (json['analiseCorte'] as List<dynamic>)
          .map((e) => AnaliseAnimalCorte.fromJson(e))
          .toList(),
      analiseLeite: (json['analiseLeite'] as List<dynamic>)
          .map((e) => AnaliseAnimalLeite.fromJson(e))
          .toList(),
      analisePostura: (json['analisePostura'] as List<dynamic>)
          .map((e) => AnaliseAnimalPostura.fromJson(e))
          .toList(),
      favorito: json['favorito'],
      areaLocal: json['areaLocal'],
      fazenda: json['fazenda'],
      doencas: (json['doencas'] as List<dynamic>)
          .map((e) => Doenca.fromJson(e))
          .toList(),
      vacinas: (json['vacinas'] as List<dynamic>)
          .map((e) => Vacina.fromJson(e))
          .toList(),
      racao: (json['racao'] as List<dynamic>)
          .map((e) => Racao.fromJson(e))
          .toList(),
      vitaminas: (json['vitaminas'] as List<dynamic>)
          .map((e) => Vitamina.fromJson(e))
          .toList(),
      valorCompra: json['valorCompra'],
      valorAtual: json['valorAtual'],
      valorVenda: json['valorVenda'],
      lucroAnimal: json['lucroAnimal'],
      dataNascimento: json['dataNascimento'],
      dataCompra: json['dataCompra'],
      dataVenda: json['dataVenda'],
      dataRegistro: json['dataRegistro'],
      dataAlteracao: json['dataAlteracao'],
      usuarioRegistro: json['usuarioRegistro'],
      usuarioAlteracao: json['usuarioAlteracao'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'identificador': identificador,
      'tipo': tipo,
      'raca': raca,
      'genero': genero,
      'imagens': imagens,
      'peso': peso,
      'altura': altura,
      'comprimento': comprimento,
      'largura': largura,
      'pai': pai,
      'mae': mae,
      'gestacao': gestacao,
      'analiseCorte': analiseCorte,
      'analiseLeite': analiseLeite,
      'analisePostura': analisePostura,
      'favorito': favorito,
      'areaLocal': areaLocal,
      'fazenda': fazenda,
      'doencas': doencas,
      'vacinas': vacinas,
      'racao': racao,
      'vitaminas': vitaminas,
      'valorKg': valorKg,
      'valorCompra': valorCompra,
      'valorAtual': valorAtual,
      'valorVenda': valorVenda,
      'lucroAnimal': lucroAnimal,
      'dataNascimento': dataNascimento,
      'dataCompra': dataCompra,
      'dataVenda': dataVenda,
      'dataRegistro': dataRegistro,
      'dataAlteracao': dataAlteracao,
      'usuarioRegistro': usuarioRegistro,
      'usuarioAlteracao': usuarioAlteracao,
    };
  }
}

main() {
  List<Doenca> doencas = [];
  Animal animal = Animal();
  animal.doencas!.add(Doenca(remedios: []));
  animal.doencas!.add(
    Doenca(
      titulo: 'Raiva',
      descricao: 'Espuma na boca e louquidão',
      // remedios: animal.doencas.map(
      //   (e) => e.remedios.add(
      //     Remedio(
      //       marca: 'Fagra',
      //       titulo: 'Pomada',
      //       descricao: 'Pomada para passar na boca',
      //       valor: 15.0,
      //     ),
      //   ),
      // ),
      inicioDoenca: '',
      fimDoenca: '',
      infectocontagiosa: false,
    ),
  );
  //print(animal.doencas.map((e) => e.remedios.map((e) => e.descricao)));
}
