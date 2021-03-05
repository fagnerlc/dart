import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

main() {
  Uno uno = Uno();
  print(uno.calculaVelocidadeMaxima());
  print(uno.calcularQuantidadesRodas());

  Carro carro = Uno();
  var x = carro as Uno;
  print(carro.calculaVelocidadeMaxima());
  print(x.motor);

  Carro carro2 = Gol();
}
