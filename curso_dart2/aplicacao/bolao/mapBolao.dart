main(List<String> args) {
  Map<String, dynamic> mapBolao;
  mapBolao = {
    'bolao': [
      {
        'id': 1,
        'titulo': 'Bolão Previ',
        'campeonato': [
          {
            'titulo': 'Campeonato Brasileiro A',
            'times': [
              {
                'nome': 'Corinthians',
                'icone': '',
              },
              {
                'nome': 'Vasco',
                'icone': '',
              },
              {
                'nome': 'Palmeiras',
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
                'grupo': [
                  {
                    'titulo': 'Série A',
                    'tabela': [
                      {
                        'rodada': [
                          {
                            'id': 1,
                            'partida': [
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
