import 'package:flutter/material.dart';

class ListViewBuilderScrollHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ['1', '2', '3', '4', '5'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              if (index >= list.length) {
                list.addAll(['1', '2', '3', '4', '5']);
              }
              return _messageItem(list[index]);
            }),
      ),
    );
  }

  Widget _messageItem(String title) {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        border: const Border(right: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
