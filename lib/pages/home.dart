import 'package:flutter/material.dart';
import 'package:warehouse/pages/category.view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final screens = [
    Center(
      child: Text("Home", style: TextStyle(fontSize: 60)),
    ),
    CategoryScreen(),
    Center(
      child: Text("Atividades", style: TextStyle(fontSize: 60)),
    ),
    Center(
      child: Text("Configurações", style: TextStyle(fontSize: 40)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Aqui será o AppBar da minha Home View
            Container(
              height: 80,
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 280,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 55, 87, 253)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 55, 87, 253),
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            IndexedStack(
              index: currentIndex,
              children: screens,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => currentIndex = index),
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Procurar',
              backgroundColor: Colors.orange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sync_alt_outlined),
              label: 'Atividades',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
