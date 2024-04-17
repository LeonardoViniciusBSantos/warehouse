import 'package:warehouse/models/categoria.model.dart';
import 'package:warehouse/models/item.model.dart';

List<Categoria> categorias = [
  Categoria(
    nome: "Fazenda",
    subcategorias: [],
    itens: [
      Item(
        id: 1,
        nome: "Vaca Leiteira",
        descricao: "Uma descrição da Vaca Leiteira",
        categoria: Categoria(
          nome: "Gados",
          subcategorias: [],
          itens: [],
        ),
      ),
      Item(
        id: 2,
        nome: "Trator",
        descricao: "Uma descrição do Trator",
        categoria: Categoria(
          nome: "Máquinas",
          subcategorias: [],
          itens: [],
        ),
      ),
    ],
  ),
  Categoria(
    nome: "Gados",
    subcategorias: [],
    itens: [
      Item(
        id: 3,
        nome: "Boi de Corte",
        descricao: "Uma descrição do Boi de Corte",
        categoria: Categoria(
          nome: "Gados",
          subcategorias: [],
          itens: [],
        ),
      ),
    ],
  ),
  Categoria(
    nome: "Máquinas",
    subcategorias: [],
    itens: [
      Item(
        id: 4,
        nome: "Colheitadeira",
        descricao: "Uma descrição da Colheitadeira",
        categoria: Categoria(
          nome: "Máquinas",
          subcategorias: [],
          itens: [],
        ),
      ),
    ],
  ),
];
