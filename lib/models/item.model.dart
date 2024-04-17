import 'package:warehouse/models/categoria.model.dart';

class Item {
  final int id;
  final String nome;
  final String descricao;
  final Categoria categoria;

  Item({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.categoria,
  });
}
