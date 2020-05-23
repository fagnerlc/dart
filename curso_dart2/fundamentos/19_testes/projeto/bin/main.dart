/**
 *  * Assert
 *    - Usa logica boleana para testar afirmações no modo debug!
 *    - Try/Catch pode ser usado para tratar a exceção!
 * 
 *  * Teste
 *    -  Certifique-se de ter o package "teste" em  "dev_dependences" no arquivo pubspec.yaml
 *    - Atualize os packages no terminal usando "pub get"
 *    - Execute os testes na pasta raiz usando "pub run test"
 *    - Podemos testar variaveis, funcoes e efetuar testes em grupos
 * 
 *  * Sintaxe
       teste("Descrição", (){
         expect(valorReal, valorEsperado)
       });
 */

import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('Hello world: ${projeto.calculate()}!');
}
