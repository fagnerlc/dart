main(List<String> args) {
  print('03.2 Ternario\n');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  print('${!true ? 'Verdadeiro' : 'Falso'}');
  print('${!false ? 'Verdadeiro' : 'Falso'}');

  int idade = 18;
  print((idade < 14) ? /**/'Crianca'/* verdade*/ : (idade < 18) ? 'Adolecente' : 'Adulto');

  int nota = 70;
  String resultado = (nota < 40) ? 'reprovado' : (nota < 70) ? 'Recuperacao' : 'Aprovado';
  print(resultado);

  int numero = 15;
  print('Numero: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');

  int multiplo = 5;
  print('Numero: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');

  int ano = 1987;
  print('Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bissexto'}');


}