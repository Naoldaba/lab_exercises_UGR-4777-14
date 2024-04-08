import 'package:flutter/material.dart';
import 'package:flut_app/Navigation/Navigator%201.0/Navigator_1.0_onGenerateRoute/screen2.dart';
import 'package:flut_app/Navigation/Navigator%201.0/Navigator_1.0_onGenerateRoute/screen3.dart';

void main() {
  runApp(OnGenerate());
}

class OnGenerate extends StatelessWidget {
  const OnGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation on generate',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => ScreenTwo());
          case '/three':
            return MaterialPageRoute(builder: (context) => ScreenThree());
        }
      },
    );
  }
}
