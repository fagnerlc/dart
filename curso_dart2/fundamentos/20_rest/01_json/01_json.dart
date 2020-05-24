/**
 *  * Conceito
 *    - Representational State Transfer(Transferencia Representacional de Estado)
 *    - É uma arquitetura que define um conjunto de restrições na criação de web service.
 *    - É uma padronização para multiplas aplicações possam se comunicar usando protocolo HTTP. 
 */

import 'dart:convert';

import '../../07_classes/03_usuario.dart';

///
/// * SERIALIZAÇÃO MANUAL - Biblioteca JSON integrada ao dart 'dart:convert';
///
/// * Serialização JSON direta
///   - Perde recurso estatico de linguagem:
///   -  segurança de tipo, autocompletar e exceções de tempo de compilação.
///

conversaoDireta() {
  print('20.1.1) JSON Conversao Direta\n');

  String jsonData = '''
  {
    "nome" : "Fagner",
    "idade" : 33,
    "email": "flc@gmail.com"
  }
  ''';

  // DECODE / decodificar
  Map<String, dynamic> parsedJson =
      jsonDecode(jsonData); // converti o JSON em Map
  print('parsedJason: $parsedJson\n');
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print(
      'USU DIRETO: nome: $nome idade: ${parsedJson['idade'] == null ? '"Idade não definida!"' : parsedJson['idade']} e-mail: $email\n');

  // ENCODE / encodar
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}

conversaoObjetos() {
  print('\n20.1.2) JSON Conversao Objeto\n');
  String jsonData = '''
  [
    {
      "nome" : "Fagner",
      "idade" : 33,
      "email": "flc@gmail.com"
    },
    {
      "nome" : "Lorena",
      "idade" : 29,
      "email": "lsrc@gmail.com"
    }
  ]
  ''';

  // DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  Usuario usuario = listaUsuarios.usuarios.singleWhere((element) => element.nome == 'Fagner');
  print('USO OBJETO: nome: ${usuario.nome} idade: ${listaUsuarios.usuarios.elementAt(0).idade} email: ${listaUsuarios.usuarios[0].email}\n');

  var usuarioNovo = Usuario.fromJson({'nome' : 'Chloe', 'idade' : 1, 'email' : 'cc@gmail'});
  listaUsuarios.usuarios.addAll([usuarioNovo, ]);

  // ENCODE

  List<dynamic> lista = listaUsuarios.toJson();
  String toJson = json.encode(lista);
  print('toJson: $toJson');

}

main() {
  conversaoDireta();
  conversaoObjetos();
}

class ListaUsuarios {
  List<Usuario> usuarios;

  ListaUsuarios({this.usuarios});

  factory ListaUsuarios.fromJson(List<dynamic> json) {
    // factory para construtor nomeado tem por padrao um retorno
    return ListaUsuarios(
         usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
        );
  }
  List<dynamic>  toJson(){
    return usuarios;
  }
}

class Usuario {
  String nome;
  int idade;
  String email;

  Usuario({this.nome, this.idade, this.email});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'nome' : nome,
      'idade' : idade,
      'email' : email
    };
  }
}
