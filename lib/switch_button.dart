import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
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
  bool _active = false;

  void _handleSwitch(bool active) {
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          new Switch(
            value: _active,
            activeColor: Colors.orange,
            activeTrackColor: Colors.red,
            inactiveThumbColor: Colors.blue,
            inactiveTrackColor: Colors.green,
            onChanged: _handleSwitch,
          )
        ],
      ),
    );
  }
}
