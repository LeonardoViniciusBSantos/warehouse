import 'package:flutter/material.dart';
import 'package:warehouse/models/data.dart';
import 'package:warehouse/models/item.model.dart';
import 'package:warehouse/pages/list_item.view.dart';
import 'package:warehouse/widgets/category.widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = Item.getAllCategories(listItems);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              categories.length,
              (index) => CategoryWidget(
                category: categories[index],
                itemCount: listItems
                    .where((item) => item.category == categories[index])
                    .length,
                onTap: () {
                  List<Item> itemsForCategory = listItems
                      .where((item) => item.category == categories[index])
                      .toList();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListItemsScreen(
                        items: itemsForCategory,
                        category: categories[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
