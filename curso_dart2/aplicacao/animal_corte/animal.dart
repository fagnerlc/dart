import 'area_local.dart';
import 'doenca.dart';
import 'racao.dart';
import 'remedio.dart';
import 'vacina.dart';
import 'vitamina.dart';

class Animal {
  String id;
  String identificador;
  // bovino / bufalinos / caprino / ovino / suínos / equinos / muar (mulas) / asinino (jumentos) / canino / felino / aves / peixes
  String tipo;
  String raca;
  String genero;
  String imagens;
  double peso;
  double altura;
  double comprimento;
  double largura;
  Animal pai;
  Animal mae;
  bool favorito;
  AreaLocal areaLocal;
  List<Doenca> doencas;
  List<Vacina> vacinas;
  //List<Remedio> remedios;
  List<Racao> racao;
  List<Vitamina> vitaminas;
  double valorCompra;
  double valorAtual;
  double valorVenda;
  String dataNascimento;
  String dataCompra;
  String dataVenda;
  String dataRegistro;
  String dataAlteracao;
  String usuarioRegistro;
  String usuarioAlteracao;

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
    this.favorito,
    this.areaLocal,
    this.doencas,
    this.vacinas,
    //this.remedios,
    this.racao,
    this.vitaminas,
    this.valorCompra,
    this.valorAtual,
    this.valorVenda,
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
      favorito: json['favorito'],
      areaLocal: json['areaLocal'],
      doencas: (json['doencas'] as List<dynamic>)
          .map((e) => Doenca.fromJson(e))
          .toList(),
      vacinas: (json['vacinas'] as List<dynamic>)
          .map((e) => Vacina.fromJson(e))
          .toList(),
      // remedios: (json['remedios'] as List<dynamic>)
      // .map((e) => Remedio.fromJson(e))
      // .toList(),
      racao: (json['racao'] as List<dynamic>)
          .map((e) => Racao.fromJson(e))
          .toList(),
      vitaminas: (json['vitaminas'] as List<dynamic>)
          .map((e) => Vitamina.fromJson(e))
          .toList(),
      valorCompra: json['valorCompra'],
      valorAtual: json['valorAtual'],
      valorVenda: json['valorVenda'],
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
      'favorito': favorito,
      'areaLocal': areaLocal,
      'doencas': doencas,
      'vacinas': vacinas,
      //'remedios': remedios,
      'racao': racao,
      'vitaminas': vitaminas,
      'valorCompra': valorCompra,
      'valorAtual': valorAtual,
      'valorVenda': valorVenda,
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
  List<Doenca> doencas = List<Doenca>();
  Animal animal = Animal();
  animal.doencas.add(Doenca(remedios: []));
  animal.doencas.add(
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
