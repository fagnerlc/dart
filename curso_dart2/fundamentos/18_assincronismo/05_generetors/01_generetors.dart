/**
 *  * Generators:
 *    - São funcoes geradoras produzem sequenciais de valores usando:
 *      > Funções sincronas retornam Iterable
 *      > Funções assincronas retornam Stream 
 */

funcoesGeradoras() {
  print('18.5.1) Funções Geradoras\n');
  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    // o * indica que é uma função geradora
    int i = 0;
    while (i < repeticaoMaxima) yield i++;
  }
  print(funcaoSincrona(5));


  Stream<int>funcaoAssincrona(int repeticaoMaxima) async* {
    // o * indica que é uma função geradora
    int i = 0;
    while (i < repeticaoMaxima) yield i++;
  }
  funcaoAssincrona(3).forEach((element) => print(element));
}

/// 
/// * yield *
///   > Utilizado em funções geradoras sincronas e assincronas recursivas
///   > Voce poderá melhorar seu desempenho usando yield* usando gerador for recursivo
/// 

funcoesGeradorasRecursivas(){
  print('\n18.5.1) Funções Geradoras Recursivas\n');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync*{
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }
  print(funcaoSincrona(3));


    Stream<int>funcaoAssincrona(int repeticaoMaxima) async* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
  }
  funcaoAssincrona(3).forEach((element) {print(element);});
}

///
/// * Try Catch
///   > Tratamento excecoes!
/// 

tratamentoExcecoes() async {
  print('\n18.5.1) Funções Geradoras Tratamento de Excecoes\n');

  Future<int> streamSoma(Stream<int> stream) async{
    var soma = 0;
  //  await for (var valor in stream) {
  //    soma += valor;
  //  }
  //  return soma;
  try {
        await for (var valor in stream) {
      soma += valor;
    }
  } catch (e) {
    print(e);
    return -1;
  }
  return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async*{
    for (var i = 1; i <= termino; i++) {
      //yield i;
      if(i == erro){
        throw Exception("Exception intencional");        
      } else{
        yield i;
      }     
    }
  }
  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  //print(stream);
  //stream.forEach((element) {print(element);});
}

main(List<String> args) {
  //funcoesGeradoras();
  //funcoesGeradorasRecursivas();
  tratamentoExcecoes();
}
