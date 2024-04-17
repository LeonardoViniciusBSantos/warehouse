import 'package:flutter/material.dart';
import 'package:warehouse/models/categoria.model.dart';
import 'package:warehouse/widgets/item.widget.dart';

class ListItemWidget extends StatelessWidget {
  final Categoria categoria;
  const ListItemWidget({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ListView.builder(
            itemCount: categoria.itens.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: categoria.itens[index],
                onTap: (p0) {
                  print('clicou');
                },
              );
            }),
      ),
    );
  }
}
