// import 'package:flut_app/Navigator_1.0_pushNamed/Widget_four.dart';
import 'package:flutter/material.dart';

class Widget_3 extends StatefulWidget {
  const Widget_3({Key? key}) : super(key: key);

  @override
  State<Widget_3> createState() => _Widget_3State();
}

class _Widget_3State extends State<Widget_3> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 1"),
      ),
      body: Row(
        children: [
          Text("Screen One"),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context, '/screen_two'
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
          
        ],
      ),
    );
  }
}
