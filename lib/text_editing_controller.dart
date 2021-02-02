import 'package:flutter/material.dart';

class TextEditingControllerWidget extends StatelessWidget {
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
  final TextEditingController _textEditingController =
      new TextEditingController();
  String _text = '';

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('input: $_textEditingController');
  }

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
            controller: _textEditingController,
            onChanged: _handleText,
            onSubmitted: _submission,
          ),
        ],
      ),
    );
  }

  void _submission(String text) {
    print(_textEditingController.text);
    _textEditingController.clear();
    setState(() {
      _text = '';
    });
  }
}
