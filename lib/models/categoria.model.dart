// categoria.dart
import 'package:warehouse/models/item.model.dart';

class Categoria {
  final String nome;
  final List<Categoria> subcategorias;
  final List<Item> itens;

  Categoria({
    required this.nome,
    required this.subcategorias,
    required this.itens,
  });

  // Método para adicionar uma subcategoria
  void adicionarSubcategoria(Categoria subcategoria) {
    subcategorias.add(subcategoria);
  }

  // Método para adicionar um item
  void adicionarItem(Item item) {
    itens.add(item);
  }
  
   // Método para excluir uma subcategoria
  void excluirSubcategoria(Categoria subcategoria) {
    subcategorias.remove(subcategoria);
  }

  // Método para excluir um item
  void excluirItem(Item item) {
    itens.remove(item);
  }
}
