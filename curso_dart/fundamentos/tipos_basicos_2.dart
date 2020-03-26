/*
  - List
  - Set
  - Map
*/

main(List<String> args) {  
  List aprovados = ['Ana', 'Carlos', 'Daniel', 'Fagner'];

  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(3));
  print(aprovados[3]);


  //Map telefone0 = new Map();
  //telefone0 = {};
  var telefone = {
    'Fagner':'+55 (21) 99800-7055',
    'Lorena':'+55 (21) 99180-7670',
    'Fabiano':'+55 (77) 99180-7670',
    'Lívia':'+55 (33) 99180-7670',
    'Edete':'+55 (77) 99180-7670',
    'Lucas':'+55 (33) 99180-7670',
    'Rodrigo':'+55 (11) 99180-7670',

  };


  print(telefone is Map);
  print(telefone);
  print(telefone.length);
  print(telefone['Fagner']);
  print(telefone.keys);
  print(telefone.values);
  print(telefone.entries);


  var times = {'Corinthians', 'Bahia', 'Vitória', 'Botafogo'};
  print(times is Set);
  times.add('Vasco');
  print(times.length);
  print(times.contains('Corinthians'));
  print(times.first);
  print(times.last);




}