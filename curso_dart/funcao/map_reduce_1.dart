main() {
  
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.9},
    {'nome': 'Fágner', 'nota': 10.0},
  ];
  String Function(Map elemento) pegarApenasONome = (aluno) => aluno['nome'];
  int Function (String) qtdeDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero)=> numero * 2;
  //var nomes = alunos.map(pegarApenasONome);
  var resultado = alunos
  .map(pegarApenasONome)
  .map(qtdeDeLetras)
  .map(dobro);
  print(resultado);
}