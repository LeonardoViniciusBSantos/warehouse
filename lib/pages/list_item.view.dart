import 'package:flutter/material.dart';
import 'package:warehouse/models/categoria.model.dart';
import 'package:warehouse/widgets/list_item.widget.dart';

class ListItemView extends StatelessWidget {
  final Categoria categoria;
  const ListItemView({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Item'),
      ),
      body: ListItemWidget(
        categoria: categoria,
      ),
    );
  }
}
