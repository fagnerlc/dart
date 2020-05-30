import 'dart:convert';
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
      print('STATUSCODE: ${response.statusCode}');
      //print('BODY: ${response.body}');

      // DECODE
      List<dynamic> parsedJson = jsonDecode(response.body);
      print('parsedJson: $parsedJson\n');
      
      var obj = Users.fromJson(parsedJson);

      //USO OBJETO
      print('USO OBJETO: ${obj.users.map((e) => e.address.geo.lat).toList()}\n');
    } else {
      throw Exception('Erro ao obter os dados: ${response.statusCode}');
    }
  } catch (e) {
    print('Exceção: $e');
  }
}

main() {
  jsonGet();
}
