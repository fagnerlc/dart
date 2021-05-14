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
  print('Bolão: :$bolao\n');

  var campeonatos =
      mapBolao['bolao1'].firstWhere((e) => e['id'] == 1)['campeonato'];
  print('CAMPEONATOS: :$campeonatos\n');

  var campeonato = mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A');
  print('CAMPEONATO: :$campeonato\n');

  var fases = mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase'];
  print('FASES: :$fases\n');

  var faseGrupo;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => faseGrupo = e['grupo']);
  print('FASE GRUPO: :$faseGrupo\n');

  var tabela;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => tabela = e['tabela']));
  print('TABELAS: :$tabela\n');

  var rodada;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo']
          .forEach((e) => e['tabela'].forEach((e) => rodada = e['rodada'])));
  print('RODADAS: :$rodada\n');

  var partidas;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach(
          (e) => e['rodada'].forEach((e) => partidas = e['partida']))));
  print('PARTIDAS: :$partidas\n');

  var partida;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach((e) =>
          e['rodada']
              .forEach((e) => e['partida'].forEach((e) => partida = e)))));
  print('PARTIDA: :$partida\n');

  var timeCasa;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela'].forEach((e) =>
          e['rodada'].forEach(
              (e) => e['partida'].forEach((e) => timeCasa = e['timeCasa'])))));
  print('TIME CASA: :$timeCasa\n');

  var nome1;
  mapBolao['bolao1']
      .firstWhere((e) => e['id'] == 1)['campeonato']
      .firstWhere((e) => e['titulo'] == 'Campeonato Brasileiro A')['fase']
      .forEach((e) => e['grupo'].forEach((e) => e['tabela']
          .forEach((e) => e['rodada'].forEach((e) => nome1 = e['partida']))));
  //.forEach((e) => nome1 = e['dataHoraPartida'])

  print('Nome 1 :$nome1\n');
}
