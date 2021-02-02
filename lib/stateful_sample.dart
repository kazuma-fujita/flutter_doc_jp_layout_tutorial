import 'package:flutter/material.dart';

class StatefulSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stateful',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful'),
        ),
        body: Center(
          child: ClickGood(),
        ),
      ),
    );
  }
}

class ClickGood extends StatefulWidget {
  @override
  _ClickGoodState createState() => _ClickGoodState();
}

class _ClickGoodState extends State<ClickGood> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Center(
                child: new Icon(
                  Icons.thumb_up,
                  color: _active ? Colors.orange[700] : Colors.grey[500],
                  size: 100,
                ),
              ),
              width: 200,
              height: 200,
            ),
            Container(
              child: Center(
                child: Text(
                  _active ? 'Active' : 'Inactive',
                  style: const TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: _active ? Colors.orange[700] : Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
