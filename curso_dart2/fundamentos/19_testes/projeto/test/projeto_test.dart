import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  // Testes Variaveis
  test('Converter Strings em Array', () {
    String texto = 'Fagner,Lorena,Chloe';
    expect(texto.split(','), equals(['Fagner', 'Lorena', 'Chloe']));
  });
  // Testes Funções

  test('calculate', () {
    expect(calculate(), 49);
  });

  group('Manipulação de Strings em Grupo', () {
    test(
        'Converter em lista',
        () => expect(
            converterEmLista('Lorena Ruella'), equals(['Lorena', 'Ruella'])));

    test(
        'Recuperar nome',
        () => expect(
            recuperarNome(['Fagner', 'Lopes']),
            allOf(
                contains('gner'), isNot(startsWith('Lor')), endsWith('ner'))));
  });

  group('Manipulação de ints', () {
    test('Resto da divisão', () {
      expect(restoDivisao(12, 3), equals(0));
    });
    test('Verificar Maioridade', () {
      expect(maiorIdade(18), 'Adulto');
      expect(maiorIdade(17), 'Adolecente');
      expect(maiorIdade(13), 'Criança');
    });
  });
}
