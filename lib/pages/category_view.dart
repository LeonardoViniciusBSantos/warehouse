import 'package:flutter/material.dart';

class CategoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lista de categorias (substitua esta lista pelos dados reais)
    List<String> categories = [
      'Categoria 1',
      'Categoria 2',
      'Categoria 3',
      'Categoria 4',
    ];

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        String category = categories[index];
        return ListTile(
          title: Text(category),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Implemente a lógica para editar a categoria
                  print('Editar categoria: $category');
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Implemente a lógica para excluir a categoria
                  print('Excluir categoria: $category');
                },
              ),
            ],
          ),
          onTap: () {
            // Implemente a lógica para exibir os detalhes da categoria
            print('Detalhes da categoria: $category');
          },
        );
      },
    );
  }
}
