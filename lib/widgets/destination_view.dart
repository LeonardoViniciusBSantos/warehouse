import 'package:flutter/material.dart';
import 'package:warehouse/pages/category_view.dart';
import 'package:warehouse/pages/list_page.dart';
import 'package:warehouse/pages/root_page.dart';
import 'package:warehouse/pages/text_page.dart';
import 'package:warehouse/models/destination.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({
    Key? key,
    required this.destination,
    required this.navigatorKey,
  }) : super(key: key);

  final Destination destination;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<DestinationView> createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return CategoryListScreen();
              case '/list':
                return TextPage(destination: widget.destination);
              case '/text':
                return TextPage(destination: widget.destination);
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }
}
