import 'dart:convert';
import 'package:fake_api/models/02_posts.dart';
import 'package:fake_api/models/users.dart';
import 'package:http/http.dart' as http;

/**
 *  Dependencia HTTP: https://pub.dev/packages/http
 *  Fake API: https://jsonplaceholder.typicode.com/
 */

jsonGet() async {
  String url = 'https://jsonplaceholder.typicode.com/users';

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      //print('STATUSCODE: ${response.statusCode}');
      //print('BODY: ${response.body}');

      // DECODE
      List<dynamic> parsedJson = jsonDecode(response.body);
      print('parsedJson: $parsedJson\n');

      var obj = Users.fromJson(parsedJson);

      //USO OBJETO
      print(
          'USO OBJETO: ${obj.users.map((e) => e.address.geo.lat).toList()}\n');

      //ENCODE
      List<dynamic> map = obj.toJson();
      String toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Erro ao obter os dados: ${response.statusCode}');
    }
  } catch (e) {
    print('Exceção: $e');
  }
}

jsonPost() async {
  print('20.2.3 Post\n');

  String url;
  url = 'https://jsonplaceholder.typicode.com/posts';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'title': 'Postagem de Fagner',
    'body': 'Funcionou! Não sei como, mas funcionou!',
    'userId': 1,
  };

  var obj = Posts.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson;
  toJson = jsonEncode(obj);
  try {
    var response = await http.post(
      url,
      body: toJson,
      headers: {"Content-type": "application/json; charset=UTF-8"},
    );
    if (response.statusCode == 201) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar POST: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

jsonPut() async {
  print('20.2.4 Put\n');

  String url;
  url = 'https://jsonplaceholder.typicode.com/posts/1';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'id': 10,
    'title': 'Postagem de Fagner',
    'body': 'Funcionou! Não sei como, mas funcionou!',
    'userId': 100,
  };

  var obj = Posts.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson;
  toJson = jsonEncode(obj);
  try {
    var response = await http.put(
      url,
      body: toJson,
      headers: {"Content-type": "application/json; charset=UTF-8"},
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar PUT: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

jsonPatch() async {
  print('20.2.4 Patch\n');

  String url;
  url = 'https://jsonplaceholder.typicode.com/posts/1';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'id': 10,
    'title': 'Postagem de Fagner',
    'userId': 100,
  };

  var obj = Posts.fromJson(parsedJson);

  // USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson;
  toJson = jsonEncode(obj);
  try {
    var response = await http.patch(
      url,
      body: toJson,
      headers: {"Content-type": "application/json; charset=UTF-8"},
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar PATCH: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

jsonDelete() async {
  print('20.2.5 Delete\n');

  String url;
  url = 'https://jsonplaceholder.typicode.com/posts/1';

  
  try {
    var response = await http.delete(url);
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}\n');
      print('BODY: ${response.body}\n');
    } else {
      throw Exception(
          'Erro ao efetuar DELETE: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

main() {
  //jsonGet();
  //jsonPost();
  //jsonPut();
  //jsonPatch();
  jsonDelete();
}
