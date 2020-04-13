///
/// Os construtores devem ter o mesmo nome da classe!
/// Eles sao iniciados quando instaciamos as classes, podemos fazer configuracoes iniciais
///


void main(List<String> args) {
  print('08.1) Construtores\n');  

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}');

  Animal animal = Animal('Chloe', 'Pug');
  print('nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n');

}

// Classe c/ Construtor com parametros!
class Animal {
  String nome;
  String raca;
  int idade;

  // Construtor
  Animal(String nome, [String raca, int idade = 0]){
    // this.nome eh o atributo que vem da classe // nome sem o this, eh o parametro passado pelo construtor
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parametros default! ${this.toString()}');
  }
}

class Objeto {
  String nome;
  Objeto(){
    print('Construtor sem parametros! ${this.toString()}');
  }
}