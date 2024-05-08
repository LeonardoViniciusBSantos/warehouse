class Item {
  final int id;
  final String name;
  final String description;
  final String category;
  final int environmentId;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.environmentId});

  // Método para obter todas as categorias dos itens sem repetir
  static List<String> getAllCategories(List<Item> items) {
    List<String> categories = [];

    // Iterar sobre os itens e adicionar suas categorias à lista de categorias, se não existirem lá ainda
    for (Item item in items) {
      if (!categories.contains(item.category)) {
        categories.add(item.category);
      }
    }
    return categories;
  }

  // Método para obter apenas os itens de uma categoria específica
  static List<Item> getItemsByCategory(List<Item> items, String category) {
    return items.where((item) => item.category == category).toList();
  }
}
