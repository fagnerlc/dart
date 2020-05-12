


void printElement(int element) {
  print(element);
}


//var list = [1, 2, 3];

main() {
  
  var list = [1, 2, 3];
  
  list.forEach(printElement);
  // Pass printElement as a parameter.
  list.forEach((element) {print('$element');});

}