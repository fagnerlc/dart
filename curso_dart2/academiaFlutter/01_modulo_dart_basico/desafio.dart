void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];
  List paciente1;
  int qtdMaior = 0;
  List<String> rahman = [];
  List<String> verne = [];
  List<String> silva = [];

  for (var i = 0; i < pacientes.length; i++) {
    paciente1 = pacientes[i].split('|');
    if (int.parse(paciente1[1]) > 20) {
      qtdMaior = qtdMaior + 1;
    }
    if (paciente1[0].toString().contains('Rahman')) {
      rahman.add(paciente1[0].toString());
    }
    if (paciente1[0].toString().contains('Verne')) {
      verne.add(paciente1[0].toString());
    }
    if (paciente1[0].toString().contains('Silva')) {
      silva.add(paciente1[0].toString());
    }
  }
  print('Existem $qtdMaior pacientes com mais de 20 anos!');

  print('Familia Rahman: \n$rahman');
  print('Familia Verne: \n$verne');
  print('Familia Silva: \n$silva');

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
