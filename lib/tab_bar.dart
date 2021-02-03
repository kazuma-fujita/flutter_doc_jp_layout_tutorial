import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final _tab = <Tab>[
    const Tab(
      text: 'Car',
      icon: Icon(Icons.directions_car),
    ),
    const Tab(
      text: 'Bicycle',
      icon: Icon(Icons.directions_bike),
    ),
    const Tab(
      text: 'Boat',
      icon: Icon(Icons.directions_boat),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            bottom: TabBar(
              tabs: _tab,
            ),
          ),
          body: const TabBarView(
            children: [
              TabPage(title: 'Car', icon: Icons.directions_car),
              TabPage(title: 'Bicycle', icon: Icons.directions_bike),
              TabPage(title: 'Boat', icon: Icons.directions_boat),
            ],
          ),
        ));
  }
}

class TabPage extends StatelessWidget {
  final IconData icon;
  final String title;

  const TabPage({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline4;

    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64,
              color: textStyle.color,
            ),
            Text(
              title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
