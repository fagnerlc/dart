import 'dart:math';

main(List<String> args) {
  var nota = Random().nextInt(11);
  print("A nota sorteada foi $nota.");

  switch(nota){
    case 10: case 9:
    print('Nota de honra!');
    break;
    case 8:
    case 7:
    print('Aprovado!');
    break;
    case 6:
    case 5:
    print('Recuperação!');
    break;
    default:
    print('Reprovado!');    
  }
}