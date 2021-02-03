import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;
  final _pageWidgets = [
    PageWidget(color: Colors.white, title: 'Home'),
    PageWidget(color: Colors.blue, title: 'Album'),
    PageWidget(color: Colors.orange, title: 'Chat'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('AppBar'),
          backgroundColor: Colors.orange,
          centerTitle: true,
          // ignore: prefer_const_literals_to_create_immutables
          actions: <Widget>[
            const IconButton(
              icon: Icon(
                Icons.face,
                color: Colors.white,
              ),
            ),
            const IconButton(icon: Icon(Icons.email)),
            const IconButton(
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        body: _pageWidgets.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: const Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.photo_album), label: 'Album'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.chat), label: 'Chat'),
          ],
          currentIndex: _currentIndex,
          fixedColor: Colors.blueAccent,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}

class PageWidget extends StatelessWidget {
  final Color color;
  final String title;

  PageWidget({Key key, this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
