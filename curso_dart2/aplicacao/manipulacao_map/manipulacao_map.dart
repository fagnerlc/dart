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
main(List<String> args) {
  List boloes = mapBolao['bolao1'];
  var bolao = boloes.firstWhere((element) => element['id'] == 1);
  if (bolao != null) {
    List campeonatos = bolao['campeonato'];
    var campeonatoBrasileiro = campeonatos.firstWhere(
        (element) => element['titulo'] == 'Campeonato Brasileiro A');
    if (campeonatoBrasileiro != null) {
      List classificacaoGamers = campeonatoBrasileiro['classificacaoGamers'];
      classificacaoGamers.forEach((element) => print(element['nome']));
    }
  }

/*   var bolao1 = mapBolao['bolao1']
      .firstWhere((element) => element['id'] == 1)['campeonato']
      .firstWhere((element) => element['titulo'] == 'Campeonato Brasileiro A')[
          'classificacaoGamers']
      .forEach((element) => print(element['nome'])); */
  var nome;
  mapBolao['bolao1']
      .firstWhere((element) => element['id'] == 1)['campeonato']
      .firstWhere((element) => element['titulo'] == 'Campeonato Brasileiro A')[
          'classificacaoGamers']
      .forEach((element) => nome = element['nome']);

  print(' Teste :$nome');

  //mapBolao.forEach((chave, valor) => print('$chave: ${valor}'));
  //print(mapBolao['bolao']);
  //mapBolao.forEach((key, value) => print('Chave: ${key} Valor: ${value}'));
  //mapBolao.forEach(
  //    (key, value) => print('forEach: ${key} ${value.id}, ${value.titulo}'));
}
