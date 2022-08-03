import 'package:flutter/material.dart';
import 'pages/mainpage.dart';

void main() {
  runApp(
    const MyDemoApp(),
  );
}

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        // Widget that makes TabBar to work
        length: 4, // sets the number of items in the TabBar
        initialIndex: 1, 
        child: MainPage(),
      ),
    );
  }
}
