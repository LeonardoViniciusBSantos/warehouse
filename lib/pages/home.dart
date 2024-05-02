import 'package:flutter/material.dart';
import 'package:warehouse/pages/activities.view.dart';
import 'package:warehouse/pages/category.view.dart';
import 'package:warehouse/models/data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  var item = listaActivities[0];
  final screens = [
    Center(
      child: Text("Início", style: TextStyle(fontSize: 60)),
    ),
    const CategoryScreen(),
    ActivityScreen(),
    //const ListActivityWidget(),
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
            Expanded(
              flex: 1,
              child: Container(
                height: 80,
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 260,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 55, 87, 253)),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 20,
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
            ),
            Expanded(
              flex: 8,
              child: IndexedStack(
                index: currentIndex,
                children: screens,
              ),
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
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Busca',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sync_alt_outlined),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ajustes',
            ),
          ],
        ),
      ),
    );
  }
}
