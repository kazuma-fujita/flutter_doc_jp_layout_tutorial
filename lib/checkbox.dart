import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
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
  bool _isCheck = false;

  void _handleCheckbox(bool isCheck) {
    setState(() {
      _isCheck = isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          new CheckboxListTile(
            activeColor: Colors.blue,
            title: const Text('選択してね'),
            subtitle: const Text('いいことあるかもね'),
            secondary: new Icon(
              Icons.thumb_up,
              color: _isCheck ? Colors.orange[700] : Colors.grey[500],
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: _isCheck,
            onChanged: _handleCheckbox,
          )
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.all(50),
  //     child: Column(
  //       children: [
  //         Center(
  //           child: Icon(
  //             Icons.thumb_up,
  //             color: _isCheck ? Colors.orange[700] : Colors.grey[500],
  //             size: 100,
  //           ),
  //         ),
  //         new Checkbox(
  //           activeColor: Colors.blue,
  //           value: _isCheck,
  //           onChanged: _handleCheckbox,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
