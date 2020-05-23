/**
 *  * Then:
 *    - Registra callbacks que serao chamadas quando o Future for concluido.
 *      > onValue: Valor passado ao termino do Future.  
 *      > catchError: Se omitido é lançado como uma exception
 *        > test: Se qualquer lógica retornar true é lançada a exception!
 *      > whenComplete: Chama uma função anonima ao termino do Future 
 */

///
/// * FUNÇÕES ASSINCRONA
///
Future<String> status([int tempo]) {
  return Future.delayed(
      Duration(seconds: tempo), () => Future.error('Erro intencional'));
  //return Future.delayed(Duration(seconds: tempo), ()=> 'Primeira tarefa finalizada\n');
}

// Função que retorna String
Future<String> tarefa({int tempo = 1}) async {
  return status(tempo).then((msg) {
    return '\nStatus: $msg';
  }).catchError(
    (onError) {
      print('CatError $onError');
    },
    test: (onError) => onError is! Future && onError.runtimeType != Future,
  ).whenComplete(() {
    print('Future Completo');
  }); // posso fazer mais que uma verificação de teste

//  var msg = await status(tempo);
//  return 'Status: $msg';
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

main() {
  print('18.3.1) Then\n');

  contagem(segundos: 3);

  tarefa(tempo: 4).then((value) => print(value??'Status: nulo')); // Função assíncrona!
}
