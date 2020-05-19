/**
 *  * Síncrona:
 *    - Operações síncronas: Bloqueia a execução até que seja concluída!
 *    - Funções síncronas: Executa somente operações síncronas.
 * 
 *  * Assíncrona:
 *    - Operações assíncronas: Permite executar outras operações enquanto são processadas.
 *    - Funções assíncronas: Executam ao menos uma operação assincrona e operações síncronas.
 *    
 *  * Await:
 *    - Indica a espera de uma operação assíncrona, conclusão de uma future!
 * 
 *  * Async:
 *    - Deve ser usado em toda função/metodo que tenha opetações assincronas, Await!
 */


///
/// * FUNÇÕES ASSINCRONAS
///
Future<String> status([int tempo]) {
  try {
    //Future.error('Tempo insuficiente para o load programado!');
    if(tempo < 4) throw Exception('Tempo insuficiente para o load programado!');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira tarefa finalizada\n');
  } catch (e) {
    print('catch: $e');
    return null;
  }
}

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

///
/// * FUNÇÃO SINCRONA
///

void contagem({int segundos = 3}) {
  print('Carregamento..\n');
  for (var i = 0; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) {
        print('\nConcluido!');
      }
    });
  }
}

main() async {
  print('18.2.1) Async Await\n');

  contagem(segundos: 3); // função síncrona!

  print(await tarefa(tempo: 3)); // função assincrona!
}
