import '../model/carro.dart';

main() {
  var carroFusca = new Carro(0, 120);

  while (!carroFusca.estaNoLimite()) {
    print("A velovidade atual é ${carroFusca.acelerar()} Km/h.");
  }
  print(
      "O carro chegou em sua velocidade máxima ${carroFusca.velocidadeAtual} Km/h.");
  while (carroFusca.velocidadeAtual > 0) {
    print("A velovidade atual é ${carroFusca.frear()} Km/h.");
  }
  print("O carro parou ${carroFusca.velocidadeAtual} Km/h.");

carroFusca.velocidadeAtual = 500;
print("O carro parou ${carroFusca.velocidadeAtual} Km/h.");
/*
  for (int a = 0; a < 80; ++a) {
    print(carroFusca.acelerar());
  }

  for (int a = 0; a < 1; ++a) {
    print(carroFusca.frear());
  }

  if (carroFusca.estaNoLimite()){
    print("O carro está em sua velocidade máxima!");
  } else {
    print("O carro NÃO está em sua velocidade máxima");
  }
  */
}
