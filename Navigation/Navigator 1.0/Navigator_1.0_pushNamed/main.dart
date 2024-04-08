import 'package:flut_app/Navigation/Navigator%201.0/Navigator_1.0_pushNamed/Widget_four.dart';
import 'package:flut_app/Navigation/Navigator%201.0/Navigator_1.0_pushNamed/Widget_three.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/screen_one',
      routes: {
        '/screen_one':(context) => Widget_3(),
        '/screen_two':(context) => Widget_4()
      },
  )
);
