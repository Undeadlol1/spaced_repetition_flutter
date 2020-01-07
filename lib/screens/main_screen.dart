import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () => setState(() => {if (_counter > 0) _counter--}),
            child: Card(
              child: SizedBox(
                height: 200,
                width: 100000,
                child: Center(
                  child: Text('Cards remaining: $_counter'),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () => Navigator.pushNamed(context, '/create_card'),
      ),
    );
  }
}
