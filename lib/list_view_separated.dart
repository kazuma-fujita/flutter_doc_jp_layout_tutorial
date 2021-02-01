import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ['message1', 'message2', 'message3', 'message4', 'message5'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return _messageItem(list[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return separatorItem();
            },
            itemCount: list.length),
      ),
    );
  }

  Widget separatorItem() {
    return Container(
      height: 10,
      color: Colors.orange,
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
