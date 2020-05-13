import 'dart:collection';

///
/// * Queue
///   - é uma colecao ordenada entre chaves{}, sem index, que manipula o inicio e o fim da lista!
///   

queue(){
  print('16.3.1) Queue');

  Queue<int> queue = Queue(); // import 'dart:collection';
  print('Implementação: ${queue.runtimeType}'); // ListQueue<int>
  queue.addAll([20,30]);
  queue.add(40);
  queue.add(7);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  queue.add(null);
  print(queue);
  queue.removeLast();
  queue.forEach((element) => print(element));
  

}

main() {
  queue();
}