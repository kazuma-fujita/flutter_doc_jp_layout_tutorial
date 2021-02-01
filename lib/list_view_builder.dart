import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ['message1', 'message2', 'message3', 'message4'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          if (index >= list.length) {
            list.addAll(['message5', 'message6', 'message7', 'message8']);
          }
          return _messageItem(list[index]);
        }),
      ),
    );
  }

  Widget _messageItem(String title) {
    return Container(
      decoration: const BoxDecoration(
        border: const Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        onTap: () {
          print('onTap');
        },
        onLongPress: () {
          print('onLongPress');
        },
      ),
    );
  }
}
