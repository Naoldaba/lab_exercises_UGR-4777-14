import 'package:flut_app/Navigation/Navigator%201.0/Navigator_1.0_Material_page_route/Widget_two.dart';
import 'package:flutter/material.dart';

class Widget_1 extends StatefulWidget {
  const Widget_1({Key? key}) : super(key: key);

  @override
  State<Widget_1> createState() => _Widget_1State();
}

class _Widget_1State extends State<Widget_1> {
  String response = ''; 

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
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Widget_2(),
                  settings: const RouteSettings(arguments: "This is from screen 1"),
                ),
              );
              setState(() {
                response = result ?? ''; 
              });
            },
            icon: Icon(Icons.arrow_forward),
          ),
          Text(response), 
        ],
      ),
    );
  }
}
