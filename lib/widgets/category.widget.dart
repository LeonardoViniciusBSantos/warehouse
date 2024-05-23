import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  final int itemCount;
  final VoidCallback onTap;

  const CategoryWidget({
    Key? key,
    required this.category,
    required this.itemCount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 160,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 87, 253),
                border: Border.all(
                  width: 1,
                  color: Color.fromRGBO(189, 205, 255, 1),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  "Foto",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("$itemCount itens"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
