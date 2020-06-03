main(List<String> args) {
  Map<String, dynamic> mapBolao;
  mapBolao = {
    'bolao': [
      {
        'id': 1,
        'titulo': 'Bolão Previ',
        'campeonato': [
          {
            'titulo': 'Campeonato Brasileiro',
            'times': [
              {
                'nome': '',
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
                                'timeCasa': 'Corinthians',
                                'result1': 7,
                                'timeFora': 'Palmeiras',
                                'result2': 1,
                              },
                              {
                                'timeCasa': 'Vasco',
                                'result1': 1,
                                'timeFora': 'Flamengo',
                                'result2': 1,
                              },
                            ],
                          }
                        ],
                      },
                    ],
                    'classificacaoTimes': [
                      {
                        'posicao': 1,
                        'nome': 'Corinthians',
                        'pontos': 70,
                      },
                    ],
                  },
                ],
              },
            ],
            'classificacaoGamers': [
              {
                'posicao': 1,
                'nome': 'Fagner',
                'pontos': 70,
              },
            ],
          },
        ],
      },
    ],
  };
  print(mapBolao);
}
