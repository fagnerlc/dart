///
/// * Future:
///   - é objeto que torna um valor ou erro, resultado de uma execução assincrona/futura.
/// 

Future<String> status([int tempo]){
  return Future.delayed(Duration(seconds: tempo), ()=> 'Primeira tarefa finalizada\n');
}

// Função que retorna String
String tarefa({int tempo = 1}){
  var msg = status(tempo);
  return 'Status: $msg';
}

void novaTarefa({int tempo = 1}){
  Future.delayed(Duration(seconds: tempo), () => print('\nSegunda tarefa finalizada!\n'));
}

excecao({int tempo = 1}) => Future.delayed(Duration(seconds: tempo), () => throw Exception('Erro intencional'));

void contagem({int segundos = 3}){
  print('Carregamento..\n');
  for (var i = 0; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i),(){
      print('${i * 33}%');
      if (i == segundos) {
        print('\nConcluido!');
      }
    });    
  }
}

main(){
  print(tarefa(tempo: 4)); // o print é execultado antes de termino do future!

  novaTarefa(tempo: 4); // o print será execultado na future, após termino do delay

  excecao(tempo: 6);

  contagem(segundos: 3);

}