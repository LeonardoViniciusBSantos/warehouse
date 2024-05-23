import 'package:flutter/material.dart';
import 'package:warehouse/models/data.dart';
import 'package:warehouse/pages/category.view.dart';
import 'package:warehouse/widgets/environment.widget.dart'; // Importe o widget EnvironmentWidget

class EnvironmentScreen extends StatelessWidget {
  const EnvironmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            environments.length,
            (index) => EnvironmentWidget(
              environment: environments[index],
              itemCount: listItems
                  .where((item) => item.environmentId == environments[index].id)
                  .length,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryScreen(), // Navegue para a tela CategoryScreen
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
