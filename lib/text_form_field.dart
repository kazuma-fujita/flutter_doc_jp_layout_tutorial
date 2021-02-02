import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
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
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            new TextFormField(
              enabled: true,
              maxLength: 20,
              maxLengthEnforced: false,
              obscureText: false,
              // autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                  hintText: '名前を入力してください', labelText: '名前'),
              validator: (String value) {
                return value.isEmpty ? '名前を入力してください' : null;
              },
              onSaved: (String value) {
                _name = value;
              },
            ),
            new TextFormField(
              maxLength: 100,
              // autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                hintText: '連絡先を教えて下さい',
                labelText: 'メールアドレス',
              ),
              validator: (String value) {
                return value.isNotEmpty && !value.contains('@')
                    ? 'メールの形式が正しくありません'
                    : null;
              },
              onSaved: (String value) {
                _email = value;
              },
            ),
            RaisedButton(onPressed: _submission, child: const Text('保存')),
          ],
        ),
      ),
    );
  }

  void _submission() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Scaffold.of(context)
          .showSnackBar(const SnackBar(content: const Text('保存したよ')));
      print(_name);
      print(_email);
    }
  }
}
