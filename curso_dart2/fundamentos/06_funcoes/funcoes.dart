void semRetorno(){
  print('06.1) Funcoes sem retorno');


  void conceito(){
    print('Funcao void sem retorno');
  }

  void somarValores(int valorA, int valorB){
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificaMaioridade(String nome, int idade){
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade');
  }

  void contagemRegressiva(int numero){
    for (var i = numero; i >= 0; i--){
      print('Contagem: ${(i == 0) ? 'Vai!!!' : i}');
    }
  }


  conceito();
  somarValores(3, 4);  
  verificaMaioridade('Fagner', 33);
  contagemRegressiva(7);

}

main() {
  semRetorno();
}