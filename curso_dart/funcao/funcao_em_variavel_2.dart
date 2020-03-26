main(){
  var adicao = (int a, int b){
    return a + b;
  };

  print(adicao(4,19));

  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;
  
  var teste = (int a, int b){
    return a * b + 7;
  };


  print(subtracao(9,13));
  print(multiplicacao(9,13));
  print(divisao(9,13));
  print(teste(9,13));
}