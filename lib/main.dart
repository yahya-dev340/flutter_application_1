import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 200,
          height: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Column(
            children: [
              Image.asset('images/lemon.jpeg'),
              Text(
                "\$1:22",
                style: TextStyle(fontSize: 10, color: Colors.green),
              ),
              Text("Organic lemon", style: TextStyle(fontSize: 12)),
              Text("4 pic", style: TextStyle(fontSize: 7, color: Colors.grey)),

              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 30,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(2),

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 48, 11),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.white, size: 20),
                    Text("Add to cart", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
