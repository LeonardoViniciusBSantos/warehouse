import 'package:flutter/material.dart';

class CreateEnvonrimentScreen extends StatelessWidget {
  const CreateEnvonrimentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Novo ambiente"),
      ),
      body: Center(
        child: Text("Tela de criar ambientes"),
      ),
    ));
  }
}
