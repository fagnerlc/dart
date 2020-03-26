class Data {
  int dia;
  int mes;
  int ano;

//  Data (int dia, int mes, int ano){
//    this.dia = dia;
//    this.mes = mes;
//    this.ano = ano;
//  }
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  Data.com({this.dia = 15, this.mes = 1, this.ano = 1987});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterFormatada() {
    //print("$dia/$mes/$ano");
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  var dataCompra = Data(1, 1, 1970);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  dataCompra.obterFormatada();
  String d1 = dataAniversario.obterFormatada();
  String d2 = dataCompra.obterFormatada();

  print("A data do aniversário é $d1");
  print("A data da compra é $d2");
  print("A data da compra é ${dataCompra.obterFormatada()}");

  print(dataCompra);
  print(dataCompra.toString());

  print(Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey estará público em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}
