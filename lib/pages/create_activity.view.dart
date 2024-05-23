import 'package:flutter/material.dart';

class CreateActivityScreen extends StatelessWidget {
  const CreateActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Nova atividade"),
      ),
      body: Center(
        child: Text("Tela de criar Atividades"),
      ),
    ));
  }
}
