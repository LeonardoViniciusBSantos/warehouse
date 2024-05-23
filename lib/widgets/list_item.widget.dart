import 'package:flutter/material.dart';
import 'package:warehouse/models/item.model.dart'; // Importe o modelo Item
import 'package:warehouse/pages/item.view.dart';
import 'package:warehouse/widgets/item.widget.dart';

class ListItemWidget extends StatelessWidget {
  final List<Item> items; // Altere o tipo de Categoria para List<Item>
  const ListItemWidget(
      {Key? key, required this.items}); // Corrija a assinatura do construtor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.builder(
        itemCount: items.length, // Use o tamanho da lista de itens
        itemBuilder: (context, index) {
          return ItemWidget(
            item: items[index], // Passe o item atual
            onTap: (item) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemView(
                    item: item,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
