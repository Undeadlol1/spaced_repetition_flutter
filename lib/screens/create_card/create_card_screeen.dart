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
        body: CardCreateForm());
  }
}

class CardCreateForm extends StatefulWidget {
  @override
  CardCreateFormState createState() {
    return CardCreateFormState();
  }
}

class CardCreateFormState extends State<CardCreateForm> {
  final _formKey = GlobalKey<FormState>();
  final _frontTextController = TextEditingController();
  final _backTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Front'),
              controller: _frontTextController,
              validator: (value) {
                final emptyError = 'Please enter some text';
                if (value.trim().isEmpty) return emptyError;
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _backTextController,
              decoration: InputDecoration(labelText: 'Back'),
              validator: (value) {
                final emptyError = 'Please enter some text';
                if (value.trim().isEmpty) return emptyError;
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    print('front ${_frontTextController.text}');
                    print('back ${_backTextController.text}');
                  }
                },
                child: Text('Submit'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
