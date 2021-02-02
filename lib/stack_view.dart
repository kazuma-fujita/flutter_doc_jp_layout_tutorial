import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SizedBox(
              width: 400,
              height: 400,
              child: Container(
                color: Colors.red,
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              width: 300,
              height: 300,
              child: Container(
                color: Colors.green,
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              left: 120,
              top: 120,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
              ),
            ),
            const Text('HEY HEY'),
          ],
        ),
      ),
    );
  }
}
