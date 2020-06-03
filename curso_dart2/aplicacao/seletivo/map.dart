main(List<String> args) {
  Map<String, dynamic> mapProcesso;
  mapProcesso = { 'processo' :{
    'titulo': '2020',
    'data': '10/06/2020',
    'aberto': true,
    '': '',
    'questionario': [
      {
        'titulo': 'Formação Acadêmica',
        'pontuacaoSoma': 38,
        'pontuacaoMax': 40,
        'blocoQuestao': [
          {
            'textoBloc': 'Graduações',
            'pontuacaoSomaBloc': 18,
            'pontuacaoMaxBloc': 20,
            'questao': [
              {
                'textoQuest': 'Graduação completa em área preferencial?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'sim',
                    'tipo': 'unica resposta!',
                    'ponto': 6,
                  },
                  {
                    'textoResp': 'não',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                ],
              },
              {
                'textoQuest': 'Graduação completa em área NÃO preferencial?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'sim',
                    'tipo': 'unica resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp': 'não',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                ],
              },
              {
                'textoQuest':
                    'Pós Graduação(MBA, Especialização ou Mestrado) ou Doutorado concluídos?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp':
                        'Primeira Pós Graduação(MBA, Especialização ou Mestrado) com mais de 360 horas de duração',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp':
                        'Segunda (ou mais) Pós Graduação(MBA, Especialização ou Mestrado) com mais de 360 horas de duração',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp': 'Realização de Doutorado',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp':
                        'Formação acadêmica internacional equevalente a Pós',
                    'tipo': 'varias resposta!',
                    'ponto': 2,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 3,
            'pontuacaoMaxBloc': 4,
            'questao': [
              {
                'textoQuest': 'Domínio de Idiomas',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Básico - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Intermediário - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Avançado - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Avançado - Inglês e outro idioma',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 13,
            'pontuacaoMaxBloc': 12,
            'questao': [
              {
                'textoQuest': 'Certificações',
                'pontuacaoSomaQuest': 13,
                'pontuacaoMaxQuest': 12,
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'multipla resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Certificação de Conselheiro Administração',
                    'tipo': 'multipla resposta!',
                    'ponto': 5,
                  },
                  {
                    'textoResp': 'Certificação de Conselheiro Fiscal',
                    'tipo': 'multipla resposta!',
                    'ponto': 5,
                  },
                  {
                    'textoResp': 'Outras Certificações',
                    'tipo': 'multipla resposta!',
                    'ponto': 3,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 4,
            'pontuacaoMaxBloc': 4,
            'questao': [
              {
                'textoQuest':
                    'Produção e aquisição de conhecimento contínuo nos ultimos 2 anos',
                'pontuacaoSomaQuest': 4,
                'pontuacaoMaxQuest': 4,
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'multipla resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Publicação de artigos ou livros',
                    'tipo': 'multipla resposta!',
                    'ponto': 2,
                  },
                  {
                    'textoResp':
                        'Conferência e Congressos nacionais e internacionais - como Palestrante',
                    'tipo': 'multipla resposta!',
                    'ponto': 2,
                  },
                ],
              },
            ],
          },
        ],
      },
      {
        'titulo': 'Experiencia Profissional',
        'pontuacaoSoma': 50,
        'pontuacaoMax': 60,
        'blocoQuestao': [
          {
            'textoBloc': 'Graduações',
            'pontuacaoSomaBloc': 18,
            'pontuacaoMaxBloc': 20,
            'questao': [
              {
                'textoQuest': 'Graduação completa em área preferencial?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'sim',
                    'tipo': 'unica resposta!',
                    'ponto': 6,
                  },
                  {
                    'textoResp': 'não',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                ],
              },
              {
                'textoQuest': 'Graduação completa em área NÃO preferencial?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'sim',
                    'tipo': 'unica resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp': 'não',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                ],
              },
              {
                'textoQuest':
                    'Pós Graduação(MBA, Especialização ou Mestrado) ou Doutorado concluídos?',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp':
                        'Primeira Pós Graduação(MBA, Especialização ou Mestrado) com mais de 360 horas de duração',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp':
                        'Segunda (ou mais) Pós Graduação(MBA, Especialização ou Mestrado) com mais de 360 horas de duração',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp': 'Realização de Doutorado',
                    'tipo': 'varias resposta!',
                    'ponto': 4,
                  },
                  {
                    'textoResp':
                        'Formação acadêmica internacional equevalente a Pós',
                    'tipo': 'varias resposta!',
                    'ponto': 2,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 3,
            'pontuacaoMaxBloc': 4,
            'questao': [
              {
                'textoQuest': 'Domínio de Idiomas',
                'pontuacaoSomaQuest': '',
                'pontuacaoMaxQuest': '',
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'unica resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Básico - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Intermediário - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Avançado - Inglês',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                  {
                    'textoResp': 'Avançado - Inglês e outro idioma',
                    'tipo': 'unica resposta!',
                    'ponto': 1,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 13,
            'pontuacaoMaxBloc': 12,
            'questao': [
              {
                'textoQuest': 'Certificações',
                'pontuacaoSomaQuest': 13,
                'pontuacaoMaxQuest': 12,
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'multipla resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Certificação de Conselheiro Administração',
                    'tipo': 'multipla resposta!',
                    'ponto': 5,
                  },
                  {
                    'textoResp': 'Certificação de Conselheiro Fiscal',
                    'tipo': 'multipla resposta!',
                    'ponto': 5,
                  },
                  {
                    'textoResp': 'Outras Certificações',
                    'tipo': 'multipla resposta!',
                    'ponto': 3,
                  },
                ],
              },
            ],
          },
          {
            'textoBloc': 'Outros conhecimentos',
            'pontuacaoSomaBloc': 4,
            'pontuacaoMaxBloc': 4,
            'questao': [
              {
                'textoQuest':
                    'Produção e aquisição de conhecimento contínuo nos ultimos 2 anos',
                'pontuacaoSomaQuest': 4,
                'pontuacaoMaxQuest': 4,
                'resposta': [
                  {
                    'textoResp': 'Não possui',
                    'tipo': 'multipla resposta!',
                    'ponto': 0,
                  },
                  {
                    'textoResp': 'Publicação de artigos ou livros',
                    'tipo': 'multipla resposta!',
                    'ponto': 2,
                  },
                  {
                    'textoResp':
                        'Conferência e Congressos nacionais e internacionais - como Palestrante',
                    'tipo': 'multipla resposta!',
                    'ponto': 2,
                  },
                ],
              },
            ],
          },
        ],
      },
    ],}
  };
  print(mapProcesso);
}
