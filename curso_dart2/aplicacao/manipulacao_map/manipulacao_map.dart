/* Manipulação de MAPs */
Map<String, dynamic> mapBolao = {
  'bolao1': [
    {
      'id': 1,
      'titulo': 'Bolão Previ',
      'campeonato': [
        {
          'titulo': 'Campeonato Brasileiro A',
          'times': [
            {
              'nome': 'Corinthians',
              'icone': '1',
            },
            {
              'nome': 'Vasco',
              'icone': '2',
            },
            {
              'nome': 'Palmeiras',
              'icone': '3',
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
                  'titulo': 'Grupo A',
                  'tabela': [
                    {
                      'rodada': [
                        {
                          'id': 1,
                          'partida': [
                            {
                              'id': 1,
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
                              'id': 2,
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

main(List<String> args) {
  var boloes = mapBolao['bolao1'];
  print('Bolões 1: :$boloes\n');

  var bolao = boloes.firstWhere((e) => e['id'] == 1);
  print('BOLÃO 2: :$bolao\n');

  var campeonatos3 = bolao['campeonato'];
  print('CAMPEONATOS 3: :$campeonatos3\n');

  var campeonato4 =
      campeonatos3.firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A');
  print('CAMPEONATO 4: :$campeonato4\n');

  var fases5 = campeonato4['fase'];
  print('FASES 5: :$fases5\n');

  var faseGrupo6;
  fases5.forEach((e) => faseGrupo6 = e['grupo']);
  print('FASE GRUPO 6: :$faseGrupo6\n');

  var tabela7;
  faseGrupo6.forEach((e) => tabela7 = e['tabela']);
  print('TABELAS 7: :$tabela7\n');

  var rodada8;
  tabela7.forEach((e) => rodada8 = e['rodada']);
  print('RODADAS 8: :$rodada8\n');

  var partidas9;
  rodada8.forEach((e) => partidas9 = e['partida']);
  print('PARTIDAS 9: :$partidas9\n');

  var partida10 = partidas9[0];
  print('PARTIDA 10: :$partida10\n');

  var timeCasa11;
  rodada8.forEach((e) =>
      timeCasa11 = e['partida'].firstWhere((e) => e['id'] == 1)['timeCasa']);
  print('TIME CASA 11: :$timeCasa11\n');
}
