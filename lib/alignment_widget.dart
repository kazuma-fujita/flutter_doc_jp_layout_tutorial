import 'package:flutter/material.dart';

class AlignmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Center(
        child: Container(
          color: Colors.white,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.max,
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: <Widget>[
            //   Container(color: Colors.blue, width: 48, height: 48),
            //   Container(color: Colors.green, width: 48, height: 48),
            //   Container(color: Colors.red, width: 48, height: 48),
            //   Container(color: Colors.yellow, width: 48, height: 48),
            // ],
            // children: [
            //   Expanded(child: Container(color: Colors.blue)),
            //   Expanded(flex: 2, child: Container(color: Colors.red)),
            //   Expanded(child: Container(color: Colors.green)),
            //   Expanded(flex: 2, child: Container(color: Colors.yellow)),
            // ],
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // children: [
            //   Container(color: Colors.blue, width: 80, height: 80),
            //   Container(color: Colors.red, width: 80, height: 80),
            // ],
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            verticalDirection: VerticalDirection.down,
            children: [
              Text('Baseline',
                  style: TextStyle(color: Colors.blue, fontSize: 48)),
              Text('Baseline',
                  style: TextStyle(color: Colors.blue, fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column / row',
      home: Container(
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   children: <Widget>[
        //     Column(children: <Widget>[
        //       Container(color: Colors.blue, width: 80, height: 80),
        //       Container(color: Colors.red, width: 80, height: 80),
        //     ]),
        //     Column(children: <Widget>[
        //       Container(color: Colors.green, width: 80, height: 80),
        //       Container(color: Colors.yellow, width: 80, height: 80),
        //     ])
        //   ],
        // ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(color: Colors.blue, width: 80, height: 80),
            Container(color: Colors.red, width: 80, height: 80),
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MUI',
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 240.0,
            height: 240.0,
            child: Text('Hello World.'),
            // padding: const EdgeInsets.all(48.0),
            // padding: const EdgeInsets.only(top: 48.0),
            // margin: const EdgeInsets.all(24.0),
            // margin: const EdgeInsets.only(left: 24.0),
            // alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.3),
          ),
        ),
      ),
    );
  }
}
