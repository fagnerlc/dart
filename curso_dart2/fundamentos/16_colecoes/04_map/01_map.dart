///
/// * Conceito
///   - Map é uma coleção dinamica e customizavel de chaves e valores entre {}. As chaves são unicas, e os valores não se repetem!
///

linkedHashMap() {
  print('\n16.4.1) LinkedHashMap == Map\n');

  List<String> nomes = ['Fagner', 'Lorena'];
  Map<int, String> nomesMap = nomes.asMap();
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

  Map<String, dynamic> usuario =
      Map.from({'nome': 'Fagner', 'idade': 36, 'peso': 95.5});
  usuario.update('nome', (valor) => '$valor Carvalho');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (value) => 70,
      ifAbsent: () =>
          'indefinido'); // ifAbsent se não tiver valor ele coloca indefinido
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  usuario.update('peso', (value) => 70,
      ifAbsent: () =>
          'indefinido'); // ifAbsent se não tiver valor ele coloca indefinido
  usuario.putIfAbsent(
      'altura',
      () =>
          1.83); // insere uma chave com um valor se o valor for ausente na lista Map.
  usuario.addAll({'sexo': 'masculino', 'casdo': true});
  print(usuario);
  print('chaves: ${usuario.keys} \nvalor: ${usuario.values}');

  Map<int, dynamic> numeros = {
    0: 'zero',
    1: 'um',
    2: 'dois',
  };
  print(numeros);
  print(numeros.map((key, value) => MapEntry(
      key, '${value.toUpperCase()}'))); // mapeando valores // toUpperCase
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

mapMap() {
  print('\n16.4.1) Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5},
  ];
  Function porcentagem(desconto) =>
      (valor) => desconto * valor['preco']; // clousure
  final moeda = (e) =>
      'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}'; //recebe uma função anonima que recebe um elmento e retorna uma String
  List<String> precos1 = carrinho.map(porcentagem(.9)).map(moeda).toList();
  List<String> precos2 =
      carrinho.map((e) => e.update('preco', (e) => e * .9)).map(moeda).toList();
  double precoTotal = carrinho
      .map((e) => e['preco'])
      .reduce((value, element) => value + element); // preco da soma dos valores
  String precoMedio = (carrinho
              .map((e) => e['preco'])
              .reduce((value, element) => value + element) /
          carrinho.length)
      .toStringAsFixed(2);
  print(
      'Lista Precos1:$precos1\nLista Preco2: $precos2\n PrecoMedio: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fagner', 'nota': 8.1},
        {'nome': 'Lorena', 'nota': 9.3}
      ]
    },
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Chloe', 'nota': 8.9},
        {'nome': 'Fabiano', 'nota': 7.3}
      ]
    },
  ];

  //List<dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota']).toList();
  List<dynamic> alunosEscola =
      escola.map((e) => e['alunos']).expand((element) => element).toList();
  print('Lista Ordenada1: $alunosEscola');

  alunosEscola.sort((b, a) => a['nota'].compareTo(b['nota']));
  print('Lista Ordenada2: $alunosEscola');
  double mediaNotas = alunosEscola
          .map((e) => e['nota'])
          .reduce((value, element) => value + element) /
      alunosEscola.length;
  print('Media Alunos: $mediaNotas');
  alunosEscola
      .forEach((element) => print('${element['nome']} ${element['nota']}'));
}

///
/// * Every
///   - faz o teste em 'todos' os elementos com o operador && retornando true ou falso
///

everyMap() {
  print('\n16.4.3) Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Labricio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Labiano', 'idade': 17},
  ];
  print(pessoas.every((element) => element.containsKey('nome')));
  print(pessoas.every((element) => element['idade'] >= 17));
  bool maiores = pessoas.every((element) => element['nome'].startsWith(
      'L')); // verifica se cada um dos elementos começa com a letra 'L'
  print(maiores);
  print('nome: $pessoas');
}

///
/// * Where
///   - filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor!
///

whereMap() {
  print('\n16.4.4) Map Where\n');
  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2499, 'fragil': true},
    {'nome': 'iPad', 'preco': 4199, 'fragil': true},
    {'nome': 'iPhone', 'preco': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];
  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  List<dynamic> resultado = produtos
      .where(fragil)
      .map(nome)
      .toList(); // enquanto estiver filtrando, reduzindo e mapeando é melhor tipar ela como var
  print('Produtos Frageis: $resultado\n');
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Fagner', 'idade': 33},
    {'nome': 'Lorena', 'idade': 29},
    {'nome': 'Fabiano', 'idade': 17},
  ];
  List<Map<String, dynamic>> maiores =
      pessoas.where((e) => e['idade'] >= 21).toList();
  Map<String, dynamic> comecaComL =
      pessoas.firstWhere((element) => element['nome'].startsWith('L'));
  Map<String, dynamic> menores =
      pessoas.singleWhere((element) => element['idade'] < 18);
  List<Map<String, dynamic>> menores2 =
      pessoas.where((element) => element['idade'] <= 17).toList();
  final Function idades = (e) => e['idade'];
  final Function soma = (p, c) => p + c;
  var media =
      ((pessoas.map(idades).reduce(soma)) / pessoas.length).toStringAsFixed(2);

  print(
      'Menores: $menores\nMenores: $menores2\nMaiores: $maiores\nMedia Idades: $media\nNomes com L:${comecaComL ?? 'Nenhum'}');
}

///
/// * Reduce
///   - Reduce compara os elementos da coleção retornando 1 unico elemento resultante;
///   - Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna atual.
///

reduceMap() {
  print('\n16.4.5)  Map reduce\n');
  List<Map<String, dynamic>> alunos = [
    {'nome': 'Fernando', 'nota': 7.3, 'bolsista': true},
    {'nome': 'Lorena', 'nota': 9.2, 'bolsista': false},
    {'nome': 'Fagner', 'nota': 9.8, 'bolsista': false},
    {'nome': 'Basilio', 'nota': 8.7, 'bolsista': true},
  ];

  final Function bolsistas = (e) => e['bolsista']
      as bool; //type '(dynamic) => dynamic' is not a subtype of type '(Map<String, dynamic>) => bool'
  final Function nomes = (e) => e['nome'];
  final Function notas = (e) => e['nota'];
  final Function soma = (p, c) => p + c;
  List<dynamic> bolsistaNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();
  var bolsistasMedia = medias.map(notas).reduce(soma) / medias.length;
  bool todosBolsistas = alunos.map(bolsistas).reduce((p, c) => p && c);
  bool algumBolsista = alunos.map(bolsistas).reduce((p, c) => p || c);
  print('Todos são bolsistas? ${todosBolsistas ? 'sim' : 'não'} \nAlgum Bolsista? ${algumBolsista ? 'sim' :'não'}');
/*
  List<dynamic> notasTodos =alunos.map(notas).toList();
  List<Map<String, dynamic>> mediasTodos = alunos.where((element) => true).toList();
  var mediaTodos = mediasTodos.map(notas).reduce(soma)/notasTodos.length;
  print(mediaTodos);
*/
  print(
      'Alunos bolsistas: $bolsistaNomes Medias bolsistas notas: $bolsistasMedia');
      List<dynamic> funcionarios = [
        {'nome' : 'Lorena', 'genero': 'F', 'pais': 'Brasil', 'salario':1599.70},
        {'nome' : 'Fagner', 'genero': 'M', 'pais': 'Argentino', 'salario':1234.360},
        {'nome' : 'Chloe', 'genero': 'F', 'pais': 'Brasil', 'salario':1730.30},
      ];
      final Function brasileiros = (e) => e['pais'] == 'Brasil';
      final Function mulheres = (e) => e['genero'] == 'F';
      final Function menorSalario = (p,c) => p['salario'] < c['salario'] ? p : c;
      List<dynamic> selecionados = funcionarios.where(brasileiros).where(mulheres).toList();
      print(selecionados);
      print(selecionados.reduce(menorSalario));
      Map<String, dynamic> funcionario = selecionados.reduce(menorSalario);
      print('Funcionarios: ${funcionario['nome']} salario: ${funcionario['salario']}');
}

main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}
