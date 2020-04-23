/*
  * Static
  A variavel estatica fica disponivel na prorpia classe em vez de suas instancias/objetos
  Em metodos estaticos deve usar variaveis estaticas da classe
  Variaveis estaticas pode, ser acessadas sem precisar instanciar classes/objetos 
*/

import '02_calculos.dart';

void main(List<String> args) {
  print('10.1) Modificadores Static \n');

  double raio = 5;
  var calc1 = new Calculos();
  print(calc1.pi);
  print(calc1.areaCirculo(raio));

  print('');

  var calc2 = new Calculos();
  print(calc2.pi);
  print(calc2.areaCirculo(raio));
  //print(calc2.areaCirculoEstatico(raio));
  print(Calculos.areaCirculoEstatico(raio));

  print('\nInstancias consomem ${identical(calc1, calc2) ? 'MENOS' : 'MAIS'} memoria!\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim' : 'Nao'} Metodos diferentes!');


  Calculos calc3 = Calculos();
}

