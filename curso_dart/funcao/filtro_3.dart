List<E> filtrar<E>(List<E> lista, Function(E) fn){
  List<E> listaFiltrada = [];
  for (E elemento in lista){
    if(fn(elemento)){
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main(List<String> args) {
  var notas = [8.2,7.3,6.8,5.4,2.7,9.3];
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas =  filtrar<double>(notas, boasNotasFn);
  print(somenteNotasBoas);


  var nomes =['Ana', 'Bia', 'Rebeca', 'Gui', 'João', 'Fagner', 'Lorena'];
  var nomesGrandesFn = (String nome)=> nome.length>=4;

  print(filtrar(nomes,nomesGrandesFn));
}