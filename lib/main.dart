import 'package:flutter/material.dart';
import 'package:kkgmart/src/homepage.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  theme: ThemeData.light(),
        home: const HomePage(0));
  }
}
