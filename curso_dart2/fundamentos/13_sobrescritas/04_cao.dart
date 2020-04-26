import '03_mamiferos.dart';

class Cao extends Mamiferos{
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = true}) 
  : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, String sexo, {idade = 'indefinida', docil = false}) 
  : super.placentarios(sexo, idade, docil: docil);  

  @override // é opcional a sintaxe override
  void dormir(){  // O Override vai sobrescrever o metodo dormir da classe animal
    print('Dorme como um cao');
  }

  @override // não precisa ter o @override pois o dart identifica autumaticamente se o nome for igual ao da classe pai
  void alimentar(){
    super.alimentar();  // implementa o escopo do metodo herdado (super) = mescla metodo da classe pai com a classe filha
    print('Cao');
  }

  @override // metodos sem escopo em classes abstratas devem ser sobrescritos
  void reproduzir (){
    print('Repoduz como um cao');
  }
  
  void acao(){
    print('Late como um cao!');
  }

  // toda classe extends de Object, ao usar a funcao print a funcao toString retorna (Instance of 'Object')
  String toString(){
    return "Instance of '${this.runtimeType}' nome: $nome raca: $raca sexo: $sexo";
  }
}