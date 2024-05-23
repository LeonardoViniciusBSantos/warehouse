import 'package:flutter/material.dart';
import 'package:warehouse/models/item.model.dart'; // Importe o modelo Item
import 'package:warehouse/widgets/list_item.widget.dart'; // Importe o widget ListItemWidget

class ListItemsScreen extends StatelessWidget {
  final List<Item> items; // Altere o tipo de Categoria para List<Item>
  final String category;

  const ListItemsScreen(
      {Key? key,
      required this.items,
      required this.category}); // Corrija a assinatura do construtor

  @override
  Widget build(BuildContext context) {
    // Filtrar os itens pela categoria especificada
    List<Item> itemsInCategory = Item.getItemsByCategory(items, category);

    return Scaffold(
      appBar: AppBar(
        title: Text('$category'),
      ),
      body: ListItemWidget(
          items:
              itemsInCategory), // Passe a lista filtrada de itens para ListItemWidget
    );
  }
}
