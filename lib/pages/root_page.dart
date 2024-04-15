import 'package:flutter/material.dart';
import 'package:warehouse/models/destination.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
    required this.destination,
  }) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${destination.title} RootPage - /'),
        backgroundColor: destination.color,
        foregroundColor: Colors.white,
      ),
        backgroundColor: destination.color.withOpacity(0.5),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: const Text('Push /list'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  useRootNavigator: false,
                  builder: _buildDialog,
                );
              },
              child: const Text('Local Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  useRootNavigator: true,
                  builder: _buildDialog,
                );
              },
              child: const Text('Root Dialog'),
            ),
            const SizedBox(height: 16),
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Text(
                            '${destination.title} BottomSheet\n'
                                'Tap the back button to dismiss',
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Local BottomSheet'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return AlertDialog(
      title: Text('${destination.title} AlertDialog'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
