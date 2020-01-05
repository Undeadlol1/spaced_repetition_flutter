import 'package:flutter/material.dart';
import 'package:spaced_repetition_flutter/screens/main_screen.dart';
import 'package:spaced_repetition_flutter/screens/create_card_screeen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spaced Repetition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/create_card': (context) => CreateCardScreen(),
      },
    );
  }
}
