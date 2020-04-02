main(List<String> args) {
  print('03.3) Switchn');

  String operacao = '+';
  double numeroA = 12;
  double numeroB = 3;

  switch(operacao){
    case '+':
      print('Resultado ${numeroA + numeroB}');
      break;
    case '-':
      print('Resultado ${numeroA - numeroB}');
      break;
    case '*':
      print('Resultado ${numeroA * numeroB}');
      break;
    case '/':
      print('Resultado ${numeroA / numeroB}');
      break;
    default :
    print('Operação invalida');
  }

  int dia = 1;

  switch (dia) {
    case 1:
    print('Domingo');      
      break;
    case 2:
    print('Segunda');      
      break;
    case 3:
    print('Terça');      
      break;
    case 4:
    print('Quarta');      
      break;
    case 5:
    print('Quinta');      
      break;
    case 6:
    print('Sexta');      
      break;
    case 7:
    print('Sábado');      
      break;
    default:
    print('Dia da semana invalido');
  }



}