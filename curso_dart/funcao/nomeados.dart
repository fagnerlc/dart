main(){
  saudarPessoa(nome:"Fagner", idade:33);
    saudarPessoa(idade:30, nome:"Fabiano");


    imprimirData();
    imprimirData(ano: 2020);
    imprimirData(ano:2021, mes:12);
}


saudarPessoa({String nome, int idade}){
  print("Ola $nome nem parece que vc tem $idade anos");
}

imprimirData({int dia = 1, int mes = 1, int ano = 1987}){
  print('$dia/$mes/$ano');
}