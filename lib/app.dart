import 'package:flutter/material.dart';
import 'themes/main.dart';
import 'screens/view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
