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
  converterKparaMilhas(dynamic array){
    dynamic milhas = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milhas).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado');
  }


  conceito();
  print('');
  somarValores(3, 4);  
  print('');
  verificaMaioridade('Fagner', 33);
  print('');
  contagemRegressiva(7);
  print('');
  converterKparaMilhas([1,5,10,30,50,70,90,110,130,150,170,190,210]);
  print('');
}

comRetorno(){
  print('06.1) Funcoes com retorno');

  String conceito(){
    
    return 'Funcao com retorno String';
  }
  String somarValores(int valorA, int valorB){
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado';
  }
  String verificaMaioridade(String nome, int idade){
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade';
  }
  String contagemRegressiva(int numero){
    var resultado;
    for (var i = numero; i >= 0; i--){
      (i != 0) ? print('Contagem: $i') : resultado = 'Vai!!!';
    }
    return resultado;
  }
  String converterKparaMilhas(dynamic array){
    dynamic milhas = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milhas).toStringAsFixed(2)}');
    }
    return 'Array convertido e arredondado';
  }

  print(conceito());
  print('');
  print(somarValores(2,5));
  print('');
  print(verificaMaioridade('Fagner', 33));
  print('');
  print(contagemRegressiva(7));
  print('');
  print(converterKparaMilhas([1,5,10,30,50,70,90,110,130,150,170,190,210]));

}


void main() {
  semRetorno();
  comRetorno();
}