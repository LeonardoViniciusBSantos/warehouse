import 'package:flutter/material.dart';
import 'package:warehouse/models/destination.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    Key? key,
    required this.destination,
  }) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    const int itemCount = 50;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final ButtonStyle buttonStyle = OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: colorScheme.onSurface.withOpacity(0.12),
        ),
      ),
      foregroundColor: destination.color,
      fixedSize: const Size.fromHeight(64),
      textStyle: Theme.of(context).textTheme.headline6,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('${destination.title} ListPage - /list'),
        backgroundColor: destination.color,
        foregroundColor: Colors.white,
      ),
      backgroundColor: destination.color,
      body: SizedBox.expand(
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: OutlinedButton(
                style: buttonStyle.copyWith(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.lerp(destination.color, Colors.white,
                        index / itemCount)!,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/text');
                },
                child: Text('Push /text [$index]'),
              ),
            );
          },
        ),
      ),
    );
  }
}
