import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView(
          children: [
            _menuItem('メニュー1', const Icon(Icons.settings)),
            _menuItem('メニュー2', const Icon(Icons.map)),
            _menuItem('メニュー3', const Icon(Icons.room)),
            _menuItem('メニュー4', const Icon(Icons.local_shipping)),
            _menuItem('メニュー5', const Icon(Icons.airplanemode_active)),
          ],
        ),
      ),
    );
  }
}

Widget _menuItem(String title, Icon icon) {
  return GestureDetector(
    child: Container(
      decoration: const BoxDecoration(
          border: const Border(
              bottom: const BorderSide(width: 1, color: Colors.grey))),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        onTap: () {
          print('onTap called');
        },
        onLongPress: () {
          print('onLongPress called');
        },
      ),
    ),
  );
}
