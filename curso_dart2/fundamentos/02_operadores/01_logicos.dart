void main() {
  print('02.1) Operadores Logicos (&& || !)');

  var verdadeiro = !false;
  bool falso = !true;
  print('Verdadiro = $verdadeiro --- Falso = $falso');
  print('Operador (!) !true = ${!true} --- !false ${!false}'); 
  bool teste1 = verdadeiro && verdadeiro;
  bool teste2 = verdadeiro && falso;
  bool teste3 = falso && falso;
  print('teste1 = $teste1'); 
  print('teste2 = $teste2'); 
  print('teste3 = $teste3'); 
  print('Operador (&&) $teste1 - $teste2 - $teste3 ');
  print('Operador (&&) ${true && true} - ${true && false} - ${falso && falso}');

  print(''); 


  bool teste4 = verdadeiro || verdadeiro;
  bool teste5 = verdadeiro || falso;
  bool teste6 = falso || falso;
  print('teste4 = $teste4'); 
  print('teste5 = $teste5'); 
  print('teste6 = $teste6'); 
  print('Operador (||) $teste4 - $teste5 - $teste6 ');
  bool operacao = (1 <= 2) &&(3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);
  
}