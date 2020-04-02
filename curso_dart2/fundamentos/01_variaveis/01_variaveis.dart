void main(){
  print("01.1) Variáveis");

/*
    "backspace" : "\b",
    "formfeed" : "\f",
    "newline" : "\n",
    "return" : "\r",
    "tab" : "\t",
*/


  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 1000, descontos = 250;
  var conta = salario - descontos;

  print(conta);

  var numero = 3 +((2*4) + (10/5));
  print(numero);
  print('');

  print("concatenar " "Strings " 
  "é simples");

  var texto1 = '\nFagner ';
  var texto2 = "Lopes";
  var texto3 = '''\n e 
  Lorena Carvalho''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;
  // $ para variaveis // ${} interpolação para operacoes
  print("verdadeiro = ${verdadeiro}"); // interpolacao
  print('falso = ' + "$falso"); // concatenacao
  print(''.runtimeType); // descobre o tipo de variavel em tempo de execucao


  const pi =3.14; // variavel é atribuida em tempo de compilacao
  nome = 'Fágner';
  String sobrenome = 'Lopes';
  int idade = 36;
  double altura = 1.83;
  bool adulto = true;

  print('\nnome: '+ "$nome \nQtd letras: ${nome.length}" + """\nSobrenome: $sobrenome \nQtd letras ${sobrenome.length}\n""");

  print('''idade: $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;

  print(variavel);



}