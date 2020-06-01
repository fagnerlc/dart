double somaPontuacao(
  double pontoAtual,
  String resultado,
  double multiplicador,
) {
  double pontoRodada;

  (resultado == "Cravado")
      ? pontoRodada = 7 * multiplicador
      : (resultado == "Acertou o VED + Diferença de gols")
          ? pontoRodada = 5 * multiplicador
          : (resultado == "Acertou o VED + Placar de um time")
              ? pontoRodada = 4 * multiplicador
              : (resultado == "Apostou em VED")
                  ? pontoRodada = 4
                  : (resultado == "Acertou o VED")
                      ? pontoRodada = 3 * multiplicador
                      : (resultado == "Diferença de gols")
                          ? pontoRodada = 2 * multiplicador
                          : (resultado == "Placar de um time")
                              ? pontoRodada = 1 * multiplicador
                              : 'Não foi possível calcular pontuação';

/*
  if (resultado == "Cravado") {
    pontoRodada = 7 * multiplicador;
  } else if (resultado == "Acertou o VED + Diferença de gols") {
    pontoRodada = 5 * multiplicador;
  } else if (resultado == "Acertou o VED + Placar de um time") {
    pontoRodada = 4 * multiplicador;
  } else if (resultado == "Apostou em VED") {
    pontoRodada = 4;
  } else if (resultado == "Acertou o VED") {
    pontoRodada = 3 * multiplicador;
  } else if (resultado == "Diferença de gols") {
    pontoRodada = 2 * multiplicador;
  } else if (resultado == "Placar de um time") {
    pontoRodada = 1 * multiplicador;
  }
*/

// TODO lembrar de pensar em uma alternativa para jogadores que marcarem a tabela antes do campeonato começar ou no inicio do campeonato

  pontoAtual = pontoAtual + pontoRodada;
  return pontoAtual;
}

main() {
  print(somaPontuacao(6, "Placar de um time", 1.1));
}
