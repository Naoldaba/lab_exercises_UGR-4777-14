import 'package:flutter/material.dart';

class Widget_3 extends StatelessWidget {
  const Widget_3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GenderSelectionCard(icon: Icons.male, label: "MALE"),
                SizedBox(width: 16),
                GenderSelectionCard(icon: Icons.female, label: "FEMALE"),
              ],
            ),
            SizedBox(height: 16),
            HeightSlider(),
            SizedBox(height: 16),
            Row(
              children: [
                WeightAgeCard(label: "WEIGHT", value: 60),
                SizedBox(width: 16),
                WeightAgeCard(label: "AGE", value: 23),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text("CALCULATE"),
            ),
          ],
        ),
      ),
    );
  }
}

class GenderSelectionCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const GenderSelectionCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 4,
        child: InkWell(
          onTap: () {
            
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 60),
                SizedBox(height: 8),
                Text(label,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeightSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("HEIGHT",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("176",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("cm",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(value: 176, min: 100, max: 250, onChanged: (double value) {}),
        ],
      ),
    );
  }
}

class WeightAgeCard extends StatelessWidget {
  final String label;
  final int value;

  const WeightAgeCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("$value",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
