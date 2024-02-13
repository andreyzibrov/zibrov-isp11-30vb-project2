import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildColumn(
                  Colors.deepOrange, Colors.deepPurple, Colors.amber, Colors.teal,
                  [1, 2, 3, 4]),
              _buildColumn(
                  Colors.indigo, Colors.lime, Colors.cyan, Colors.pink,
                  [5, 6, 7, 8]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(Color color1, Color color2, Color color3, Color color4, List<int> numbers) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: color1,
              margin: EdgeInsets.all(2.5),
              child: Center(child: Text('${numbers[0]}', style: TextStyle(color: Colors.white))),
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              color: color2,
              margin: EdgeInsets.all(2.5),
              child: Center(child: Text('${numbers[1]}', style: TextStyle(color: Colors.white))),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: color3,
              margin: EdgeInsets.all(2.5),
              child: Center(child: Text('${numbers[2]}', style: TextStyle(color: Colors.white))),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: color4,
              margin: EdgeInsets.all(2.5),
              child: Center(child: Text('${numbers[3]}', style: TextStyle(color: Colors.white))),
            ),
            flex: 4,
          ),
        ],
      ),
      flex: 1,
    );
  }
}