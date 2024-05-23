import 'package:flutter/material.dart';
import 'package:warehouse/models/activity.model.dart'; // Importe a model Activity

class ActivityWidget extends StatelessWidget {
  final Activity activity;
  final VoidCallback onTap;

  const ActivityWidget({
    Key? key,
    required this.activity,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Icon(Icons.adjust),
                Container(
                  width: 2.0,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.symmetric(
                          vertical: BorderSide(
                    color: Colors.black,
                  ))),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "${activity.dateTime.day}/${activity.dateTime.month}/${activity.dateTime.year} - ${activity.dateTime.hour}:${activity.dateTime.minute}",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                    child: Column(
                      children: [
                        Text(
                          activity.name,
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          activity.description,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
