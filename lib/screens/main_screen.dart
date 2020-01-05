import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Card(
                color: Colors.blue,
                child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(child: Text('Test'))))),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () => Navigator.pushNamed(context, '/create_card'),
      ),
    );
  }
}
