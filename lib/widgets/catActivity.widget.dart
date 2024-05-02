import 'package:flutter/material.dart';
import 'package:warehouse/models/catActivity.model.dart';

class CatAtivivityWidget extends StatelessWidget {
  final CatActivity catActivity;
  final Function(CatActivity) onTap;
  const CatAtivivityWidget(
      {super.key, required this.catActivity, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(catActivity),
      child: Container(
        decoration: BoxDecoration(
            border: BorderDirectional(bottom: BorderSide(color: Colors.black))),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              catActivity.nome,
              style: TextStyle(fontSize: 14),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
