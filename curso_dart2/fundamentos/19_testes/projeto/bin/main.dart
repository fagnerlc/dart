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
  print('19.1.1) Testes unitários\n');

  print('Hello world: ${projeto.calculate()}!');
  print('Listar nomes: ${projeto.converterEmLista('Fagner Lopes')}!');
  print('Verifica a maioridade: ${projeto.maiorIdade(-17)}!');
  print('Recuperar nome: ${projeto.recuperarNome(['Fagner', 'Lopes'])}!');
  print('Resto da divisao: ${projeto.restoDivisao(12,3)}');
  // fora do try catch gera excecao!
  String texto;
  assert(texto == null);

  try {
    String telefone = '12345678';
    assert(telefone.length == 9, 'O telefone deve conter 9 digitos');
  } catch (e) {
    print('Exeção: $e');
  }
}
