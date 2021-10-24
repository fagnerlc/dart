abstract class Animal {
  // quando coloca o abstract - não pode mais instaciar a classe em objetos
  String? idade;
  bool docil;
  bool? coluna;

  Animal.vertebrados(this.idade, {this.docil = false}) {
    this.coluna = true;
  }
  Animal.invertebrados(this.idade, {this.docil = false}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dormi como um animal!');
  }
}
