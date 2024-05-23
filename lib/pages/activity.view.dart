import 'package:flutter/material.dart';
import 'package:warehouse/models/activity.model.dart';

class ActivityScreen extends StatelessWidget {
  final Activity activity;

  const ActivityScreen({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Atividade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: ${activity.name}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Descrição: ${activity.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Data/Hora: ${activity.dateTime}',
              style: TextStyle(fontSize: 16),
            ),
            // Adicione mais informações da atividade conforme necessário
          ],
        ),
      ),
    );
  }
}
