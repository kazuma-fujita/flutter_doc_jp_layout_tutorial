import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox'),
        ),
        body: ChangeForm(),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _type = '';

  void _handleRadio(String type) {
    setState(() {
      _type = type;
    });
  }

  IconData _changeIcon(String type) {
    IconData icon = null;
    switch (type) {
      case 'thumb_up':
        icon = Icons.thumb_up;
        break;
      case 'favorite':
        icon = Icons.favorite;
        break;
      default:
        icon = Icons.thumb_up;
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          Center(
            child: new Icon(
              _changeIcon(_type),
              color: Colors.orange[700],
              size: 100,
            ),
          ),
          new RadioListTile(
            title: const Text('いいね'),
            subtitle: const Text('とってもいいね'),
            secondary: const Icon(Icons.thumb_up),
            activeColor: Colors.blue,
            value: 'thumb_up',
            groupValue: _type,
            onChanged: _handleRadio,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          new RadioListTile(
            title: const Text('お気に入り'),
            subtitle: const Text('とってもお気に入り'),
            secondary: const Icon(Icons.favorite),
            activeColor: Colors.red,
            value: 'favorite',
            groupValue: _type,
            onChanged: _handleRadio,
            controlAffinity: ListTileControlAffinity.trailing,
          )
        ],
      ),
    );
  }
}
