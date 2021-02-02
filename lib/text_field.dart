import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _text = '';

  void _handleText(String text) {
    setState(() {
      _text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          Text(
            '$_text',
            style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500),
          ),
          new TextField(
            enabled: true,
            maxLength: 10,
            maxLengthEnforced: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            maxLines: 1,
            decoration: const InputDecoration(
              icon: Icon(Icons.face),
              hintText: '名前を入力してください',
              labelText: '名前',
            ),
            onChanged: _handleText,
          ),
          new TextField(
            enabled: true,
            maxLength: 10,
            maxLengthEnforced: true,
            style: const TextStyle(color: Colors.black),
            obscureText: false,
            maxLines: 1,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              icon: Icon(Icons.face),
              hintText: '年齢を入力してください',
              labelText: '年齢',
            ),
            onChanged: _handleText,
          ),
        ],
      ),
    );
  }
}
