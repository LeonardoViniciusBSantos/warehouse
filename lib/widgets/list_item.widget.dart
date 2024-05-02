import 'package:flutter/material.dart';
import 'package:warehouse/models/categoria.model.dart';
import 'package:warehouse/pages/item.view.dart';
import 'package:warehouse/widgets/item.widget.dart';

class ListItemWidget extends StatelessWidget {
  final Categoria categoria;
  const ListItemWidget({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.builder(
          itemCount: categoria.itens.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: categoria.itens[index],
              onTap: (p0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemView(
                              item: p0,
                            )));
              },
            );
          }),
    );
  }
}
