Object segundoElementoV1(List lista){
  return lista.length >=2 ? lista[1]: null;
}

E segundoElementoV2<E>(List <E> lista){
  return lista.length >=2 ? lista[1]: null;
}


main(List<String> args) {
  var lista = [3,7,8,12,45,78,1];

  print(segundoElementoV1(lista));

  int segundoElemento = segundoElementoV2<int>(lista);
  print('Generics: $segundoElemento');

  segundoElemento = segundoElementoV2(lista);
  print('Generics: $segundoElemento');
}