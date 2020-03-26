import 'dart:math';

main(List<String> args) {
  var nota = Random().nextInt(11);

  print("Nota selecionada foi $nota.");
  if (nota >= 7)
  print('Aprovado');
  else
  print('Reporvado');
}