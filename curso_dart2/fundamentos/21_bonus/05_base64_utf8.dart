import 'dart:convert';

/**
 *  * UTF8
 *    - Binario que representa qualquer caracter universal.
 *  * Base64
 *    - Codificação de dados para transferencia na Internet.
 *    - https://www.base64encode.org/ 
 */

main(List<String> args) {
  print('21.5) Base64 e UTF-8');

  String email = 'flc@gmail.com';

  //ENCODE
  List ebytes = utf8.encode(email);
  print(ebytes);

  String codificado = base64.encode(ebytes);
  print(codificado);

  // DECODE
  List dbytes = base64.decode(codificado);
  print(dbytes);
  String decodificado = utf8.decode(dbytes);
  print(decodificado);
}
