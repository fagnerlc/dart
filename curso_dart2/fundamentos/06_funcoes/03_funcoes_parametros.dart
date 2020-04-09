///
/// Funcoes com parametros posicionados devem obedecer a ordem declarada!
/// Funcoes com parametros nomeados devem ser declarados!
/// Os parametros posicionados ou nomeados devem comecar pelo ultimo parametro da funcao!
///


funcaoParametros(){
  print('06.3.1) Funcoes com parametros posicionados e deffault.\n');

  void exibirDados(String nome, [int peso = 65, double altura]){
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados("Fagner");
  exibirDados("Fagner", 95, 1.89);

  print('06.3.2) Funcoes com parametros nomeados e deffault.\n');

  exibirDados2(String nome, {int peso, double altura}){
    print('Nome: $nome peso: $peso altura: $altura: ${altura ?? 'Não informada!'}');
  }

  exibirDados2("Fagner");
  exibirDados2("Fagner", peso: 95, altura: 1.89); // pode declarar fora de ordem!

  print('06.3.3) Funcoes como parametros para outras funcoes.\n');

  falar(){
    print('Essa é uma funcao passada como parametro');
  }

  void saudacao(String nome, {Function funcaoFalar}){
    print('Olá, eu sou $nome!');
    funcaoFalar();
  }

  saudacao('Fagner', funcaoFalar: falar);

  saudacao('Fagner', funcaoFalar:() => print('Essa é uma funcao anonima passada como parametro nomeado!'));
}

void main() {
  funcaoParametros();
}