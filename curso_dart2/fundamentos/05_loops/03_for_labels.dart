main(List<String> args) {
  print('05.3 For Label \n');


  for (var i = 0; i < 2; i++){
    // i = 0
    for (var j = i; j < 2; j++){
      // j = 0
      for (var k = j; k < 2; k++){
        // k = 1
        print('i: $i j: $j k: $k');    
      }    
    }
  }


  print('\n For com break e rotulos (label)\n');

  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('LoopExterno: i: $i');
    loopInterno:
    for (var j = 0; j < 3; j++) {
      // j = 0
      print('loopInterno: i: $i j: $j');
      if (j > 2)break;
      if (i == 1)break loopInterno;
      if (i == 2)break loopExterno;
      print('loopCompleto');
    }
  }

  print('\n For com continue e rotulos (label)\n');

  loopExterno:
  for (var i = 0; i <= 2; i++) {
    // i = 0
    print('loopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      // j = 0
      print('loopInterno: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('loopCompleto');
    }

  }

}