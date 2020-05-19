/**
 *  * TRATAMENTO DE EXCEÇAO
 *    - try: Usado para testar uma lógica.
 *    - catch: Captura erros na lógica try.
 *    - on: Captura erros/exceções especificos/conhecidos na lógica try.
 *    - throw Exception: Exceção criada pelo usuário e tratada no catch.
 *    - finally: Êxecutado ao final try/catch, com exceção ou não! Utilizado para liberar recursos na lõgica try.
 */

///
/// Caso 01: Quando voce desconhece a exceção, use a clausula TRY CATCH.
///

caso01() {
  print('17.1.1.2) Try Catch\n');
  try {
    double resultado = 1 / 0;
    print('Resultado: $resultado');  // Resultado: Infinity
  } catch (e) {
    print('Exceção: $e'); // Exceção: IntegerDivisionByZeroException
  }
}



/// 
/// Caso 02: Quando vc conhece a exceção, use a clausula ON
/// 


caso02(){
  print('\n17.1.1.2) ON\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');  // Resultado: Infinity
  } 
  on IntegerDivisionByZeroException{
    print('Exceção: Não é possivel dividir por zero!');
  }
  catch (e) {
    print('Exceção: $e'); // Exceção: IntegerDivisionByZeroException
  }
}


///
/// Caso 03: Para descobrir eventos ocorridos antes da exceção, use Stack Trace!
/// 

caso03(){
  print('\n17.1.1.3) Stack Trace\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } 
  
  catch (e,s) {
    print('Exceção: $e'); 
    print('Stack Trace: $s'); 
  }
}

///
///  Caso 04: Use finally para tratamentos apos execução do try catch.
/// 

caso04(){
  print('\n17.1.1.4) Finally\n');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  }  catch (e) {
    print('Exceção: $e'); 
  } finally{
    print('finally: com ou sem exceção "finally" será executado!'); // com ou sem exceção o finally será executado!
  }
}


caso05(){
  print('\n17.1.1.5) Throw Exception\n');
  try {
    int valorA = 1, valorB = 0;
    double resultado = valorA / valorB;
    print(resultado);
    print(resultado.isInfinite);
    if(resultado.isInfinite) throw Exception('A variavel valorB deve ser != 0 ');
    print('Resultado: $resultado');    
  }  catch (e) {
    print('Exceção: $e'); 
  } finally{
    print('finally: com ou sem exceção "finally" será executado!'); // com ou sem exceção o finally será executado!
  }
}
main() {
  print('17.1.1) Tratamento de Execeções\n');
  caso01();
  caso02();
  caso03();
  caso04();
  caso05();
}
