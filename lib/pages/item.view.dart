import 'package:flutter/material.dart';
import 'package:warehouse/models/categoria.model.dart';
import 'package:warehouse/widgets/list_item.widget.dart';

class ItemView extends StatelessWidget {
  final Categoria categoria;
  const ItemView({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListItemWidget(
        categoria: categoria,
      ),
    );
  }
}
