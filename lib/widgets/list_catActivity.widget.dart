import 'package:flutter/material.dart';
import 'package:warehouse/models/data.dart';
import 'package:warehouse/widgets/catActivity.widget.dart';

class ListCatActivityWidget extends StatelessWidget {
  const ListCatActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.builder(
          itemCount: listaActivities.length,
          itemBuilder: (context, index) {
            return CatAtivivityWidget(
              catActivity: listaActivities[index],
              onTap: (x) {
                print("Clicou");
              },
            );
          }),
    );
  }
}
