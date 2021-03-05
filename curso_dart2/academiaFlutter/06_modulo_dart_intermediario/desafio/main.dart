main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
  criarMap() {
    List<Map> listMapPessoas = [];
    for (var i = 0; i < pessoas.length; i++) {
      Map mapPessoa = Map();
      List listPessoas = [];
      List listPessoa = [];
      listPessoa = pessoas[i].split('|');
      //print('listPessoa = $listPessoa');
      listPessoas.add(mapPessoa['nome'] = listPessoa[0]);
      //listPessoas.add(mapPessoa.putIfAbsent('nome', () => listPessoa[0]));
      listPessoas.add(mapPessoa['idade'] = listPessoa[1]);
      //listPessoas.add(
      //    mapPessoa.putIfAbsent('idade', () => int.tryParse(listPessoa[1])));
      listPessoas.add(mapPessoa['genero'] = listPessoa[2]);
      //listPessoas.add(mapPessoa.putIfAbsent('genero', () => listPessoa[2]));
      listMapPessoas.add(mapPessoa);
      //listPessoa.clear();
      //print('mapPessoa = $mapPessoa');
    }
    print('listMapPessoas = $listMapPessoas');
    //print('pessoas = $pessoas');
    //print('listPessoas = $listPessoas');
  }

  criarMap();
}
// Baseado na lista acima.
// 1 - Remover os duplicados
// 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
//     e mostre a quantidade de pessoas com mais de 18 anos
// 4 - Encontre a pessoa mais velha.
