import 'package:flutter/material.dart';

class Widget_1 extends StatelessWidget {
  const Widget_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 1"),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/car.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              "1975 Porsche 911 Carrera",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.thumb_up),
                SizedBox(width: 8),
                Text('0'),
                SizedBox(width: 16),
                Icon(Icons.message),
                SizedBox(width: 8),
                Text('0'),
                SizedBox(width: 16),
                Icon(Icons.share),
                SizedBox(width: 8),
                Text("Share"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Essential Information",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1 of 3 done",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  CardItem1(),
                  CardItem2(),
                  CardItem3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.cloud),
                SizedBox(width: 8),
                Text(
                  "Year, Make, Model, VIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.mark_email_read),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Year: 1975",
            ),
            Text(
              "Make: Porsche",
            ),
            Text(
              "Model: 911 Carrera",
            ),
            Text(
              "VIN: 911572687274",
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.cloud),
                SizedBox(width: 8),
                Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.mark_email_read),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.cloud),
                SizedBox(width: 8),
                Text(
                  "Photos",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.mark_email_read),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
