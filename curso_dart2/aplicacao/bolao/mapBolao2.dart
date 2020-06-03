main(List<String> args) {
  Map<String, dynamic> mapBolao;
  mapBolao = {
    'campeonatos': [
      {
        'tituloCampeonato': 'Campeonato Brasileiro A',
        'bolao': [
          {
            'id': 1,
            'tituloBolao': 'Bolão Previ',
            'times': [
              {
                'nomeTime': 'Corinthians',
                'icone': '',
              },
              {
                'nomeTime': 'Vasco',
                'icone': '',
              },
              {
                'nomeTime': 'Palmeiras',
                'icone': '',
              }
            ],
            'classificacaoGamers': [
              {
                'posicao': 1,
                'nome': 'Fagner',
                'pontos': 70,
              },
            ],
            'fase': [
              {
                'tituloFase': 'Fase Única',
                'grupos': [
                  {
                    'tituloGrupo': 'Série A',
                    'tabela': [
                      {
                        'rodadas': [
                          {
                            'id': 1,
                            'partidas': [
                              {
                                'dataHoraPartida': '15/01/1987',
                                'dataHoraChute': '14/01/1987',
                                'timeCasa': 'Corinthians',
                                'resultRealCasa1': 7,
                                'chuteCasa1': 3,
                                'timeFora': 'Palmeiras',
                                'resultRealFora2': 1,
                                'chuteCasa2': 2,
                              },
                              {
                                'data': '15/01/1987',
                                'timeCasa': 'Vasco',
                                'resultRealCasa1': 1,
                                'chuteCasa1': 1,
                                'timeFora': 'Flamengo',
                                'resultRealFora2': 1,
                                'chuteCasa2': 2,
                              },
                            ],
                          }
                        ],
                      },
                    ],
                  },
                ],
              },
            ],
          },
        ],
      },
    ],
  };
  print(mapBolao);
}
