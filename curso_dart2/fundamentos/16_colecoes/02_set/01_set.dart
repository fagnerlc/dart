import 'dart:collection';

///
/// * Set
///   - é uma coleção de elementos unicos e ordenados entre chaves {}. Não tem acesso a indice!
///  

linkedHashSet(){
  print('16.2.1) LinkedHashSet -- Set \n');

  Set<int> setInt = Set();
  print('Implementacao: ${setInt.runtimeType}'); // Implementacao: _CompactLinkedHashSet<int>

  //setInt[0] = 0;  // não tem acesso a indice
  setInt.add(13);
  setInt.add(13);
  setInt.add(null); // pode conter null
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt); // representada por cahves
  for(var i = 0; i < setInt.length; i++){
    // print(setInt[i]); // não tem acesso a indices mas pode usar elementAt
    print(setInt.elementAt(i));
  }
  for (var elemento in setInt){
    print('for in: $elemento');
  }
  setInt.forEach((element) => print('ForEach: ${element}'));

  Set<int> listaA = {0,1,2,3,4};
  Set<int> listaB = {3,4,5,6,7};
  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(0));
  print(listaA.lookup(5));
}

///
/// * HashSet
///   - é uma coleção de elementos unicose desordenados
/// 

hashSet(){
  print('\n16.2.2) HashSet \n');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  print('Implementação: ${hashSet1.runtimeType}'); // _HashSet<String>

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet1.add(null); // pode conter elmentos null
  hashSet2.add(1); // apenas int com 1 decimal fica ordenado!
  hashSet2.add(2);
  hashSet2.add(3);
  hashSet3.add(11); // apenas int com 1 decimal fica ordenado!
  hashSet3.add(22);
  hashSet3.add(33);
  print('$hashSet1 \t $hashSet2 \t $hashSet3');
  for (var i = 0; i < hashSet1.length; i++) {
    //print(hashSet1[i]); //não tem acesso ao indice mas pode usar elementAt
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }
  for (var item in hashSet2) {
    print('for in hashSet2: ${item}');    
  }

  hashSet3.forEach((element) => print('forEach: ${element}'));
}

///
/// * SplayTreeSet
///   - organiza automaticamente os elementos em ordem crescente
///   - por ser uma arvore de comparações não pode conter elementos null
/// 

splayTreeSet(){
  print('\n16.2.3) SplayTreeSet \n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet(); // import 'dart:collection'
  print('Implementação: ${splayTreeSet.runtimeType}'); // Implementação: SplayTreeSet<String>
  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  //splayTreeSet.add(null); // não pode conter null
  print(splayTreeSet);
  for (var i = 0; i < splayTreeSet.length; i++) {
    //print(hashSet1[i]); //não tem acesso ao indice mas pode usar elementAt
    print('For: ${splayTreeSet.elementAt(i)}');
  }
  for (var item in splayTreeSet) {
    print('for in: $item');
  }
  splayTreeSet.forEach((element) => print('ForEach: $element'));
}



main() {
  
  linkedHashSet();
  hashSet();
  splayTreeSet();
}