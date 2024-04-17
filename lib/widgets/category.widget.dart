// category_widget.dart
import 'package:flutter/material.dart';
import 'package:warehouse/models/categoria.model.dart';

class CategoryWidget extends StatelessWidget {
  final Categoria categoria;
  final Function(Categoria) onTap;

  const CategoryWidget({
    Key? key,
    required this.categoria,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(categoria);
      },
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 55, 87, 253),
              border:
                  Border.all(width: 1, color: Color.fromRGBO(189, 205, 255, 1)),
              borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
              categoria.nome,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
