import 'package:flutter/material.dart';

class Widget_4 extends StatefulWidget {
  const Widget_4({super.key});

  @override
  State<Widget_4> createState() => _Widget_4State();
}

class _Widget_4State extends State<Widget_4> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 2"),
      ),
      body: Row(
        children: [
          Text("Screen Two"),
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            icon: Icon(Icons.arrow_back)),
          
        ],
      )
    );
  }
}