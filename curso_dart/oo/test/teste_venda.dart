import '../model/cliente.dart';
import '../model/venda.dart';
import '../model/venda_item.dart';
import '../model/produto.dart';

main() {
  var venda = Venda(
      cliente: Cliente(nome: 'Fagner Lopes Carvalho', cpf: '840.766.665-34'),
      itens: <VendaItem>[
        VendaItem(
          quantidade: 30,
          produto:
              Produto(codigo: 1, nome: 'lapis', preco: 6.00, desconto: 0.5),
        ),
        VendaItem(
          quantidade: 20,
          produto: Produto(
              codigo: 20, nome: 'Caderno', preco: 20.00, desconto: 0.25),
        ),
        VendaItem(
          quantidade: 100,
          produto: 
              Produto(codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5),
        ),
      ]);

  print("O valor total da venda é R\$${venda.valorTotal}");
  print("NOme do primeiro produto é ${venda.itens[0].produto.nome}");
  print("O CPF do cliente é ${venda.cliente.cpf}");
}
