import 'package:flutter/material.dart';
import 'package:flutter_project/PaymentApp.dart';

class Cart extends StatefulWidget {
  // final String productName;

  // const Cart({super.key, required this.productName});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final double totalCost = 0.0;
  final int numberOfProducts = 0;
  int num = 0;
  void _increment(int val) {
    setState(() {
      num++;
    });
  }

  void _decrement(int val) {
    setState(() {
      if (num > 0) {
        num--;
      }
    });
  }

  void _buyPressed(BuildContext context) {
    Navigator.pushNamed(
        context, '/PaymentApp');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CART",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.shopping_cart),
      ),
      backgroundColor: Colors.tealAccent,
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: const Color.fromRGBO(33, 150, 243, 1),
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: Colors.white,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: Colors.green,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width * 0.9,
            color: Colors.cyanAccent,
            child: Row(children: <Widget>[
              const Icon(
                Icons.image,
                size: 100,
              ),
              const Text("Some text about product."),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    _increment();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _decrement();
                  },
                  child: const Text("-")),
              Text('$num'),
            ]),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3, color: Colors.red), 
              color: Colors.white,
),
            child: Row(children: <Widget>[
              Text(
                  "Total number of products: $numberOfProducts \nTotal cost: $totalCost")
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                _buyPressed(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    size.width * 0.7,
                    size.height * 0.05,
                  ),
                  shadowColor: Colors.red),
                  
              child: const Text("BUY"))
        ],
      )),
    );
  }
}
