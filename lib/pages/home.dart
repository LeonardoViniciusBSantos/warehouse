import 'package:flutter/material.dart';
import 'package:warehouse/pages/create_item.view.dart';
import 'package:warehouse/pages/environment.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              child: EnvironmentScreen(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 55, 87, 253),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateItemsScreen(),
              ),
            );
          },
          tooltip: 'Adicionar',
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
