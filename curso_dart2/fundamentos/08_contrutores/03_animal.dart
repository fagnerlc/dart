// Classe c/ Construtor com parametros!
class Animal {
  String? nome;
  String? raca;
  int? idade;

  // Construtor
  Animal(String nome, [String? raca, int idade = 0]) {
    // this.nome eh o atributo que vem da classe // nome sem o this, eh o parametro passado pelo construtor
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parametros default! ${this.toString()}');
  }
}
