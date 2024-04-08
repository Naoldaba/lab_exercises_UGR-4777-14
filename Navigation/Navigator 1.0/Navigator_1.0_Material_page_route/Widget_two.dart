import 'package:flutter/material.dart';

class Widget_2 extends StatefulWidget {
  const Widget_2({super.key});

  @override
  State<Widget_2> createState() => _Widget_2State();
}

class _Widget_2State extends State<Widget_2> {
  @override
  Widget build(BuildContext context) {

    final response=ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 2"),
      ),
      body: Row(
        children: [
          Text("Screen Two"),
          IconButton(
            onPressed: (){
              Navigator.pop(context, "This is from screen two");
            }, 
            icon: Icon(Icons.arrow_back)),
          Text(response)
        ],
      )
    );
  }
}