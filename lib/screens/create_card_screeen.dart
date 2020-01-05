import 'package:flutter/material.dart';

class CreateCardScreen extends StatelessWidget {
  const CreateCardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create A Card',
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            child: TextFormField(
          autovalidate: true,
          validator: (text) {
            if (text.length > 100) {
              return 'Text is too long';
            }
            return null;
          },
          onEditingComplete: () => Navigator.pushNamed(context, '/'),
        )));
  }
}
