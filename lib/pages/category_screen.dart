import 'package:flutter/material.dart';
import 'package:warehouse/widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de categorias (apenas para exemplo)
    final List<Map<String, dynamic>> categories = [
      {
        'name': 'Categoria 1',
        'imageUrl': 'https://via.placeholder.com/400',
      },
      {
        'name': 'Categoria 2',
        'imageUrl': 'https://via.placeholder.com/400',
      },
      {
        'name': 'Categoria 3',
        'imageUrl': 'https://via.placeholder.com/400',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryCard(
              categoryName: category['name'],
              imageUrl: category['imageUrl'],
              onPressed: () {
                // Adicione aqui a navegação para os detalhes da categoria
                print('Categoria ${category['name']} selecionada');
              },
            ),
          );
        },
      ),
    );
  }
}
