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
  var map1 = mapBolao['bolao1'].firstWhere((element) => element['id'] == 1);
  print('Primeiro Print: $map1\n');
  var map2 = map1['campeonato'].firstWhere(
      (e) => e['titulo'] == 'Campeonato Brasileiro A')['classificacaoGamers'];
  print('Segundo Print: $map2\n');
  var map3;
  map2.forEach((e) => map3 = e['nome']);
  print('Terceiro Print: $map3\n');

  var map4 = map1['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['times'];
  print('Quarto Print: $map4\n');

  var map5 = map4.firstWhere((e) => e['nome'] == 'Corinthians')['nome'];
  print('Quinto Print: $map5\n');

  var map6 = map1['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase'];
  print('Sexto Print: $map6\n');
  //var map7 = map6
  //    .forEach((e) => e.firstWhere((e) => ['titulo'] == 'Grupo A')['tabela']);
  //.firstWhere((e) => e['grupo']);
  //print('Sétimo Print: $map7\n');
  var boloes = mapBolao['bolao1'];
  print('Bolões: :$boloes\n');

  var bolao = mapBolao['bolao1'].firstWhere((e) => e['id'] == 1);
  print('BOLÃO: :$bolao\n');
  var bolao2 = boloes.firstWhere((e) => e['id'] == 1);
  print('BOLÃO 2: :$bolao2\n');

  var campeonatos =
      mapBolao['bolao1'].firstWhere((e) => e['id'] == 1)['campeonato'];
  print('CAMPEONATOS: :$campeonatos\n');
  var campeonatos3 = bolao2['campeonato'];
  print('CAMPEONATOS 3: :$campeonatos3\n');

  var campeonato = mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A');
  print('CAMPEONATO: :$campeonato\n');
  var campeonato4 =
      campeonatos3.firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A');
  print('CAMPEONATO 4: :$campeonato4\n');

  var fases = mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase'];
  print('FASES: :$fases\n');
  var fases5 = campeonato4['fase'];
  print('FASES 5: :$fases5\n');

  var faseGrupo;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => faseGrupo = e['grupo']);
  print('FASE GRUPO: :$faseGrupo\n');

  var faseGrupo6;
  fases5.forEach((e) => faseGrupo6 = e['grupo']);
  print('FASE GRUPO 6: :$faseGrupo6\n');

  var tabela;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => tabela = e['tabela']));
  print('TABELAS: :$tabela\n');
  var tabela7;
  faseGrupo6.forEach((e) => tabela7 = e['tabela']);
  print('TABELAS 7: :$tabela7\n');

  var rodada;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo']
          .forEach((e) => e['tabela'].forEach((e) => rodada = e['rodada'])));
  print('RODADAS: :$rodada\n');
  var rodada8;
  tabela7.forEach((e) => rodada8 = e['rodada']);
  print('RODADAS 8: :$rodada8\n');

  var partidas;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach(
          (e) => e['rodada'].forEach((e) => partidas = e['partida']))));
  print('PARTIDAS: :$partidas\n');
  var partidas9;
  rodada8.forEach((e) => partidas9 = e['partida']);
  print('PARTIDAS 9: :$partidas9\n');

  var partida;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach(
          (e) => e['rodada'].forEach((e) => partida = e['partida'][0]))));
  print('PARTIDA: :$partida\n');
  var partida10 = partidas9[0];
  print('PARTIDA 10: :$partida10\n');

  var timeCasa;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach((e) =>
          e['rodada'].forEach((e) => timeCasa =
              e['partida'].firstWhere((e) => e['id'] == 1)['timeCasa']))));
  print('TIME CASA: :$timeCasa\n');
  var timeCasa11;
  rodada8.forEach((e) =>
      timeCasa11 = e['partida'].firstWhere((e) => e['id'] == 1)['timeCasa']);
  print('TIME CASA 11: :$timeCasa11\n');

//.forEach((e) => timeCasa = e['timeCasa'])
  var nome1;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela']
          .forEach((e) => e['rodada'].forEach((e) => nome1 = e['partida']))));
  //.forEach((e) => nome1 = e['dataHoraPartida'])

  print('Nome 1 :$nome1\n');
}
