import 'package:flutter/material.dart';

class ItemsListScreen extends StatelessWidget {
  final String categoryName;
  final List<String> items;

  const ItemsListScreen({
    Key? key,
    required this.categoryName,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              // Adicione aqui a navegação para os detalhes do item
              print('Item $item selecionado');
            },
          );
        },
      ),
    );
  }
}
