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
    return const MainPage();
  }
}
