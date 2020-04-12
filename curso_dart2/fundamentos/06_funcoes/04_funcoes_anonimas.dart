///
///Funcoes Anonimas não possuem nome!

funcoesAnonimas(){

  print('06.4.1) Funcoes Anonimas Conceito\n');

  print('''SINTAXE
  (){
    print('Funcao Anonima!');
  }
  () => print('Funcao Anonima usando Funcao Arrow!');
  ''');
  print('\n06.4.2) Funcoes Anonimas como Variaveis\n');

  var variavelAnonima = () => print('Varivel Anonima!');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variavel anonima $msg');
  variavelAnonimaParametro('com parametro!');

  print('\n06.4.3) Funcoes Anonimas como Parametros\n');
  
  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Funcao Anonima passada como parametro!'));
}

main(List<String> args) {
  funcoesAnonimas();
}