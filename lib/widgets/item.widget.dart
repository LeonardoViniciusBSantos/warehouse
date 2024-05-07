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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.book),
            Text(
              item.name,
              style: TextStyle(fontSize: 16),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
