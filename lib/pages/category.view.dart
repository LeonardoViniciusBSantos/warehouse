import 'package:flutter/material.dart';
import 'package:warehouse/models/data.dart';
import 'package:warehouse/pages/item.view.dart';
import 'package:warehouse/widgets/category.widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            categorias.length,
            (index) => CategoryWidget(
              categoria: categorias[index],
              onTap: (categoria) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemView(categoria: categoria)));
              },
            ),
          ),
        ),
      ),
    );
  }
}
