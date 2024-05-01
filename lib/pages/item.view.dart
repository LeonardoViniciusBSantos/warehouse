import 'package:flutter/material.dart';
import 'package:warehouse/models/item.model.dart';

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Item'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID: ${item.id}'),
            Text('Nome: ${item.nome}'),
            Text('Descrição: ${item.descricao}'),
            // Adicione mais informações do item aqui conforme necessário
          ],
        ),
      ),
    );
  }
}
