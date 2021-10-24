import 'package:flutter/material.dart';
import 'package:spaced_repetition_flutter/screens/main/main_screen.dart';
import 'package:spaced_repetition_flutter/screens/create_card/create_card_screeen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spaced Repetition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => MainScreen(),
        '/create_card': (_) => CreateCardScreen(),
      },
    );
  }
}
