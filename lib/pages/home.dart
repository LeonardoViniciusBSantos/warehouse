import 'package:flutter/material.dart';
import 'package:warehouse/models/destination.dart';
import 'package:warehouse/widgets/destination_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, 'Categories', Icons.category, Colors.teal),
    Destination(1, 'list', Icons.category, Colors.teal),
    // Adicione outros destinos conforme necessário
  ];

  late final List<GlobalKey<NavigatorState>> navigatorKeys;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    navigatorKeys = List<GlobalKey<NavigatorState>>.generate(
      allDestinations.length,
          (int index) => GlobalKey(),
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            for (final Destination destination in allDestinations)
              DestinationView(
                destination: destination,
                navigatorKey: navigatorKeys[destination.index],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            label: destination.title,
          );
        }).toList(),
      ),
    );
  }
}
