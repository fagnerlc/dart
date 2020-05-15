///
/// * Conceito
///   - Map é uma coleção dinamica e customizavel de chaves e valores entre {}. As chaves são unicas, e os valores não se repetem!
/// 

linkedHashMap(){

  print('\n16.4.1) LinkedHashMap == Map\n');

  List<String> nomes = ['Fagner','Lorena'];
  Map<int,String> nomesMap = nomes.asMap();
  print('\n $nomesMap');
  nomesMap.forEach((chave, valor) => print('$chave: $valor'));


  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // mesma chave atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelho';
  frutas['uva'] = 7;
  print('\n $frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('verde'));
  print(frutas['banana']);
  frutas.clear();
  frutas[null] = null;
  print('$frutas\n');

  Map<String, dynamic> usuario = Map.from({'nome' : 'Fagner', 'idade' : 36, 'peso' : 95.5});
  usuario.update('nome', (valor) => '$valor Carvalho');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido'); // ifAbsent se não tiver valor ele coloca indefinido
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido'); // ifAbsent se não tiver valor ele coloca indefinido
  usuario.putIfAbsent('altura', () => 1.83); // insere uma chave com um valor se o valor for ausente na lista Map.
  usuario.addAll({'sexo' : 'masculino', 'casdo' : true});
  print(usuario);
  print('chaves: ${usuario.keys} \nvalor: ${usuario.values}');

  Map<int, dynamic> numeros = {0:'zero', 1: 'um', 2: 'dois',};
  print(numeros);
  print(numeros.map((key, value) => MapEntry(key,'${value.toUpperCase()}'))); // mapeando valores // toUpperCase
  for (var chave in numeros.keys) {
    print('forIn: $chave');    
  }
  for (var valor in numeros.values) {
    print('forIn: $valor');    
  }
  for (var key in numeros.keys) {
    final valor = numeros[key];    
    print('forIn: chave $key valor ${valor.toUpperCase()}');
  }
}

/// 
/// * Map:
///   - Map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho!
/// 

mapMap(){
  print('\n16.4.1) Map map\n');

  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borracha', 'preco':3.45},
    {'nome':'Caderno', 'preco':13.9},
    {'nome':'KitLapis', 'preco':41.22},
    {'nome':'Caneta', 'preco':7.5},
  ]; 
  Function porcentagem(desconto) => (valor) => desconto * valor['preco']; // clousure
  final moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.',',')}'; //recebe uma função anonima que recebe um elmento e retorna uma String
  List<String> precos1 = carrinho.map(porcentagem(.9)).map(moeda).toList();
  List<String> precos2 = carrinho.map((e)=> e.update('preco', (e) => e * .9)).map(moeda).toList();
  double precoTotal = carrinho.map((e) => e['preco']).reduce((value, element) => value + element); // preco da soma dos valores
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((value, element) => value + element)/carrinho.length).toStringAsFixed(2);
  print('Lista Precos1:$precos1\nLista Preco2: $precos2\n PrecoMedio: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome' : 'Turma T1',
      'alunos' : [
        {'nome' : 'Fagner', 'nota' : 8.1},
        {'nome' : 'Lorena', 'nota' : 9.3}        
      ]
    },
    {
      'nome' : 'Turma T1',
      'alunos' : [
        {'nome' : 'Chloe', 'nota' : 8.9},
        {'nome' : 'Fabiano', 'nota' : 7.3}        
      ]
    },
  ];

  //List<dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota']).toList();
  List<dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((element) => element).toList();
  print('Lista Ordenada1: $alunosEscola');

  alunosEscola.sort((b,a)=> a['nota'].compareTo(b['nota']));
  print('Lista Ordenada2: $alunosEscola');
  double mediaNotas = alunosEscola.map((e) => e['nota']).reduce((value, element) => value + element) / alunosEscola.length;
  print('Media Alunos: $mediaNotas');
  alunosEscola.forEach((element) => print('${element['nome']} ${element['nota']}'));

}

main() {
  linkedHashMap();
  mapMap();
}