import 'dart:math';


void executar({Function fnPar, Function fnImpar}){

  var sorteado = Random().nextInt(10);
  sorteado % 2 == 0 ? fnPar() : fnImpar();
  print('O valor sorteado foi $sorteado');
  //Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
 /* if(Random().nextInt(10)% 2 == 0){
    fnPar();
  } else{
    fnImpar();
  }*/
}

main(){
  var minhaFnPar = ()=> print('Eita! O valor é par!');
  var minhaFnImpar = ()=> print('Legal! O valor é impar!');

  executar (fnPar: minhaFnPar, fnImpar:minhaFnImpar);
}