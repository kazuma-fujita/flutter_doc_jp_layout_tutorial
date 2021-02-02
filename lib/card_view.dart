import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card View'),
        ),
        body: Card(
          margin: const EdgeInsets.all(50),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 300,
            height: 100,
            child: const Text(
              'Card',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
