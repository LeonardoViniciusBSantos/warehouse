import 'package:flutter/material.dart';

class CreateItemsScreen extends StatelessWidget {
  const CreateItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Novo item"),
      ),
      body: Center(
        child: Text("Tela de criar itens"),
      ),
    ));
  }
}
