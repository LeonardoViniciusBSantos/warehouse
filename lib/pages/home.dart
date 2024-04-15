import 'package:flutter/material.dart';
import 'package:warehouse/pages/category_screen.dart';
import 'package:warehouse/pages/test_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Índice inicial

  // Lista de widgets para os diferentes corpos das telas
  final List<Widget> _screens = [
    CategoriesScreen(), // Adicione aqui a tela de categorias
    TestScreen(), // Adicione aqui a tela de teste
    // Adicione mais telas conforme necessário
  ];

  // Função para alterar o corpo da tela ao clicar na barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Não tem AppBar
      body: _screens[_selectedIndex], // Mostra o corpo selecionado
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Índice selecionado
        selectedItemColor: Colors.blue, // Cor do item selecionado
        onTap: _onItemTapped, // Função chamada ao clicar em um item
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          // Adicione mais itens conforme necessário
        ],
      ),
    );
  }
}
