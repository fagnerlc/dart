import './venda_item.dart';
import './cliente.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []});


  double get valorTotal{
    return itens
    .map((item) => item.preco * item.quantidade)
    .reduce((value, element) => value + element);
  }
}
