import 'package:flutter/material.dart';

void main() {
  runApp(ColorPageApp());
}

class ColorPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Page',
      home: ColorPage(),
    );
  }
}

class ColorPage extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (Color color in colors)
              Container(
                width: 100,
                height: 100,
                color: color,
                margin: EdgeInsets.all(10),
              ),
          ],
        ),
      ),
    );
  }
}
