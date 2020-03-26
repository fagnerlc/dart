main(List<String> args) {
  Map<String, double> notas = {
    'João Pedro' : 9.1,
    'Fagner Lopes' : 10.0,
    'Lívia Carvalho': 8,
    'Lorena Carvalho': 6.4,
    'Fabiano Lopes' : 7.5,
  };
  
  for(String nome in notas.keys){
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");  
  }

  for (var nota in notas.values){
    print("A nota é $nota");
  }


  for (var registro in notas.entries){
    print("O aluno ${registro.key} tem nota ${registro.value}.");
  }
}