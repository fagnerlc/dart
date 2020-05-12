import 'dart:math';

import '03_pessoa.dart';
import '04_vendedor.dart';
import '05_venda.dart';
import '06_proprietario.dart';
import '07_carro.dart';
import '08_caracteristicas.dart';
import '09_multa.dart';
main(List<String> args) {
  print('16.2.1List manipulando Objetos\n');

  Pessoa p1 = Pessoa('Fagner ','Carvalho', identidade: 12345678);
  Pessoa p2 = Pessoa('Lorena ','Carvalho', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];

  pessoas.add(Pessoa('Chloe','Carvalho'));

  for(var i = 0; i < pessoas.length; i++){
    print('for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }

  print('');

  for (var pessoa in pessoas) {
    print('for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('');

  pessoas.forEach((element) => print('forEach: ${element.nome} ${element.sobrenome} id: ${element.identidade}'));


  print('\n16.2.2) Ordenando Objetos\n');

  List<Vendedor> vendedores = List();
  vendedores.add(Vendedor('Fagner', [Venda('iPhoneX', 4199.99), Venda('MacBookPro', 5300.00), Venda('Galaxy S10', 3500.25)]));
  vendedores.add(Vendedor('Lorena', [Venda('iPhone8', 3000.00), Venda('Galaxy S10', 3500.25), Venda('iPhoneX', 4199.99)]));
  vendedores.add(Vendedor('Chloe',  [Venda('iPhoneX', 4199.99), Venda('iPhoneX', 4199.99), Venda('Galaxy S10', 3500.25)]));
  // organizar lista de vendas pela soma total

  vendedores.sort((b,a)=> (a.vendas.fold(0, (previousValue, element) => previousValue + element.preco).compareTo(b.vendas.fold(0, (previousValue, element) => previousValue + element.preco)))); // element é sempre o valor atual
  // organizar as vendas de cada vendedor
  vendedores.forEach((element) => element.vendas.sort((b,a) => a.preco.compareTo(b.preco)));
  vendedores.forEach((element) => print('Vendedor #${element.nome} \t ${element.vendas.length} vendas '
  '\t totalizando ${element.vendas.fold(0, (previousValue, element) => previousValue + element.preco)} reais '
  '\t vendas: ${element.vendas.map((e) => e.preco).toList()}')); // o fold ordena a lista

  print('\n16.2.3) List escopo de loops em objetos\n');

  List<Proprietario> proprietarios = List();
  proprietarios.add(Proprietario('Fagner','Rua Belisário Távora, 275',[
    Carro('Renault','Sandero', 'FMP9435',Caracteristicas('Passeio', 5, 116, 'Felx'), multas: [
      Multa('Excesso de Velocidade', 'Gravíssima', 7), 
      Multa('Estacionar em local proibido', 'grave', 5),
      ]),
    Carro('Fiat','Toro', 'FLC1987',Caracteristicas('Carga', 5, 106, 'Felx'), multas: [
      Multa('Excesso de Velocidade', 'Gravíssima', 7), 
      Multa('Radar', 'Leve', 3),
      ]),
      ]));

  proprietarios.add(Proprietario('Lorena','Rua Belisário Távora, 275',[
    Carro('Renault','Sandero', 'FMP9435',Caracteristicas('Passeio', 5, 116, 'Felx'), multas: [
      Multa('Excesso de Velocidade', 'Gravíssima', 7), 
      Multa('Estacionar em local proibido', 'grave', 5),
      ]),
    Carro('Fiat','Toro', 'FLC1987',Caracteristicas('Carga', 5, 106, 'Felx'), multas: [
      Multa('Excesso de Velocidade', 'Gravíssima', 7), 
      Multa('Radar', 'Leve', 3),
      ]),
      ]));

      proprietarios.sort((b,a)=> a.nome.compareTo(b.nome));  // muda a ordem de execulção quem foi gravado por ultimo
      //proprietarios.forEach((element) => element.carros.forEach((element) => element.multas.sort((a,b) => a.pontos.compareTo(b.pontos)))); // multas em ordem crescente se comentar essa parte ele gera em outra ordem

      for(var i = 0; i < proprietarios.length; i++){
        var carros = proprietarios[i].carros;
        for (var carro in carros) {
          carro.multas.forEach((element) {
            print('${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristica.tipo} \t ${element.descricao} - ${element.pontos} pontos');
          });
        }
      }
}