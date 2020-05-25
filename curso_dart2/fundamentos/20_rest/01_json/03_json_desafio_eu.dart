main() {
  String jsonData = '''
    {
        "nome" : "Fernando", 
        "idade": 36, 
        "parentes": {
          "mae": "Marlene",
          "pai": "Delcio"
        },
        "tarefas": [
          "Pagar contas",
          "Estudar"
        ],
        "conjuge": {
          "nome" : "Leila", 
          "idade": 31,
          "parentes": {
            "mae": "Lindraci",
            "pai": "Pedro"
          }
        },
        "filhos" : [      
          {
            "nome" : "Chloe", 
            "idade": 1, 
            "vacinas": [
              "ACWY",
              "Sarampo"
            ]
          },
          {
            "nome" : "Bartolomeu", 
            "idade": 5, 
            "vacinas": [
              "ACWY",
              "Sarampo",
              "Meningite"
            ]
          }
        ],
        "bens": {
          "veiculos": [
            {
              "marca": "Maverick",
              "modelo": "Ford",
              "caracteristicas": {
                "tipo": "passeio",
                "passageiros": 5
              },
              "multas": [
                {
                  "descrisao": "Excesso Velocidade",
                  "tipo": "Gravissima",
                  "pontos": 7
                },
                {
                  "descrisao": "Estacionar Local Proibido",
                  "tipo": "Grave",
                  "pontos": 4
                }
              ]
            },
            {
              "marca": "Kawasaki",
              "modelo": "Ninja H2R",
              "caracteristicas": {
                "tipo": "corrida",
                "passageiros": 2
              },
              "multas": [
                {
                  "descrisao": "Excesso Velocidade",
                  "tipo": "Gravissima",
                  "pontos": 7
                },
                {
                  "descrisao": "Excesso Velocidade",
                  "tipo": "Gravissima",
                  "pontos": 7
                },
                {
                  "descrisao": "Excesso Velocidade",
                  "tipo": "Gravissima",
                  "pontos": 7
                }
              ]
            }
          ],
          "imoveis": [
            {
              "tipo": "casa",
              "endereco": "Rua dos tolos, 0, Vila do Chaves",
              "contas": [
                {
                  "tipo": "IPTU",
                  "valor": 1000
                },
                {
                  "tipo": "Condominio",
                  "valor": 500
                }
              ]
            }
          ]
        }
      }
      ''';


      //! Regra 01 identifique e crie as classes de acordo com o json.
      //! Regra 02 crie os construtores do mais profundo ate a raiz.
      //! Regra 03 faca o tratamento de erros.
}
