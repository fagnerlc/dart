class Carro{
  String marca, modelo;
  Carro(this.marca, this.modelo);
}

class Pessoa{
  static final Map<String, Pessoa> _pessoas = Map(); // 
  final String nome;
  int idade;
  double peso;

  factory Pessoa(String nome, {int idade, double peso}){
    if (_pessoas.containsKey(nome)) return _pessoas[nome];
    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }

  Pessoa._construtorPrivado(this.nome, this.idade, this.peso);

  static void mostrarDetalhes(String nome){
    if(_pessoas.containsKey(nome)){
      print('DETALHES: nome: $nome idade: ${_pessoas[nome].idade} peso: ${_pessoas[nome].peso}');
    } else {
      print('"${nome}" não existe no map de Pessoas');
    }
  }

  static void alterarDetalhes(String nome, {int idade, double peso}){
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome].idade = idade;
      _pessoas[nome].peso = peso;
      print('ALTERAÇÂO: nome: $nome idade: ${_pessoas[nome].idade} peso: ${_pessoas[nome].peso}');      
    } else {
      print('"${nome}" não existe no map de Pessoas');
    }
  }

  static void mostrarPessoas(){
    print('PESSOAS: $_pessoas');
    _pessoas.forEach((key, value) => print('forEach: ${key} ${value.idade}, ${value.peso}'));
  }

  @override 
  String toString(){
    return '$nome: $idade';
  }
}

main() {
  print('\n16.4.2.1) Map Objetos\n');

  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Renault', 'Captur');
  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print('for: $i ${carros["${i}"].modelo}'); // se ordenado por string ou num pode usar for
  }
  for (var chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro.modelo}');    
  }
  carros.forEach((key, value) => print('forEach: $key ${value.modelo}'));

  print('\n16.4.2.2) Map Singletons\n');

  Pessoa p1 = Pessoa('Fagner', idade: 33, peso: 95);
  Pessoa p2 = Pessoa('Lorena', idade: 29, peso: 50);
  Pessoa('Fagner', idade: 37);
  Pessoa('Lorena', idade: 30);
  Pessoa('Chloe');
  Pessoa.mostrarPessoas();
  p1.peso = 70;
  Pessoa.mostrarDetalhes('Fagner');
  p2.peso = 71.1;
  Pessoa.alterarDetalhes('Chloe', idade: 1, peso: 3);
  Pessoa.mostrarPessoas();

}