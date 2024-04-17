import 'package:flutter/material.dart';
import 'package:warehouse/models/item.model.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  final Function(Item) onTap;

  const ItemWidget({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(item);
      },
      child: Container(
        decoration: BoxDecoration(
            border: BorderDirectional(bottom: BorderSide(color: Colors.black))),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.agriculture),
            Column(
              children: [
                Text(
                  "${item.id}",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  item.nome,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
