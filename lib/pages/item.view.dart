import 'package:flutter/material.dart';
import 'package:warehouse/models/activity.model.dart';
import 'package:warehouse/models/data.dart';
import 'package:warehouse/models/item.model.dart';
import 'package:warehouse/pages/activity.view.dart';
import 'package:warehouse/widgets/activity.widget.dart';

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filtrar as atividades pelo ID do item usando o método da classe Activity
    List<Activity> activitiesForItem =
        Activity.getActivitiesForItem(listActivities, item.id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${item.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Descrição: ${item.description}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Atividades:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: activitiesForItem.length,
                itemBuilder: (context, index) {
                  final activity = activitiesForItem[index];
                  return ActivityWidget(
                    activity: activitiesForItem[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ActivityScreen(activity: activity),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
