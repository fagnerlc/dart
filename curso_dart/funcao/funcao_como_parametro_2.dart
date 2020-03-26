/*void executarPor({int qtde, Function(String) fn, String valor}){
  for (int i = 0; i< qtde; i++){
    fn(valor);
  }
}

main() {
  print('Teste');
  executarPor(qtde: 10, fn: print, valor:'Muito Legal!');
}*/


int executarPor({int qtde, String Function(String) fn, String valor}){
  String textoCompleto = '';
  for (int i = 0; i< qtde; i++){
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}

main() {
  print('Teste');
  var meuPrint=(String valor){
    print(valor);
    return valor;
  };
  //executarPor(qtde: 10, fn: meuPrint, valor:'Muito Legal!');
  int tamanho = executarPor(qtde: 10, fn: meuPrint, valor:'Muito Legal!');
  print('O tamanho da String é $tamanho');
}