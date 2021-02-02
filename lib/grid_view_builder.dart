import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = ['images1', 'images2', 'images3', 'images4', 'images5'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: GridView.builder(
            // scrollDirection: Axis.horizontal,
            // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //   maxCrossAxisExtent: 150,
            // ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index >= grid.length) {
                grid.addAll(
                    ['images1', 'images2', 'images3', 'images4', 'images5']);
              }
              return _photoItem(grid[index]);
            }),
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
