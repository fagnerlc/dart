import 'dart:convert';

/**
 *  Biblioteca HTTP: https://pub.dev/packages/http
 *  Viacep API: https://viacep.com.br/
 */

import 'package:http/http.dart' as http;

main() async {
  String url = 'https://viacep.com.br/ws/22245070/json/';

/*
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "unidade": "",
    "ibge": "3550308",
    "gia": "1004"
  }
*/

  try {
    var response = await http.get(url);
    //print('STATUS: ${response.statusCode}');
    //print('STATUS: ${response.body}\n');

//DECODE
    if (response.statusCode == 200) {
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      Cep cep = Cep.fromJson(parsedJson);

      print('parsedJson: $parsedJson');
      print('OBJETO: ${cep.logradouro}');

      // ENCODE
      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else{
      throw Exception('Erro ao obter o CEP: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}


class Cep {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String unidade;
  String ibge;
  String gia;

  Cep(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.unidade,
      this.ibge,
      this.gia});

  Cep.fromJson(Map<String, dynamic> json) 
    : this(
    cep : json['cep'],
    logradouro : json['logradouro'],
    complemento : json['complemento'],
    bairro : json['bairro'],
    localidade : json['localidade'],
    uf : json['uf'],    unidade : json['unidade'],
    ibge : json['ibge'],
    gia : json['gia'],
    );
  

  Map<String, dynamic> toJson() {
    return {
      'cep' : cep,
      'logradouro' : logradouro,
      'complemento' : complemento,
      'bairro' : bairro,
      'localidade' : localidade,
      'uf' : uf,
      'unidade' : unidade,
      'ibge' : ibge,
      'gia' : gia,
      };
    
  }
}