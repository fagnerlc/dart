import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 5;

  @override
  int calculaVelocidadeMaxima() {
    return 200;
  }
}
