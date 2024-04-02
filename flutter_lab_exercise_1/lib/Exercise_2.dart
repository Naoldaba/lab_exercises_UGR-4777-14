import 'package:flutter/material.dart';


class Widget_2 extends StatelessWidget {
  const Widget_2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shopping Cart", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("Verify your quantity and click checkout", style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16),
                Divider(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CartItem(itemName: "Calas", itemPrice: "\$15.00", imagePath: 'assets/tibs.jpg'),
                  CartItem(itemName: "Firfir", itemPrice: "\$15.00", imagePath: 'assets/firfir.jpg'),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text("Checkout"),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  const CartItem({required this.itemName, required this.itemPrice, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.cover),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(itemPrice, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(icon: Icon(Icons.add), onPressed: () {}),
                Text('1.0'),
                IconButton(icon: Icon(Icons.remove), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}