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
  exibirDados2("Fagner", peso: 95, altura: 1.89);

}

void main() {
  funcaoParametros();
}