import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      _photoItem('images1'),
      _photoItem('images2'),
      _photoItem('images3'),
      _photoItem('images4'),
      _photoItem('images5'),
      _photoItem('images6'),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: list,
        ),
        // body: GridView.count(
        //   crossAxisCount: 2,
        //   children: list,
        // ),
      ),
    );
  }

  Widget _photoItem(String image) {
    final assetsImage = 'assets/images/$image.jpg';
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
