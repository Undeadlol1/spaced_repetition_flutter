import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class MemoryCard {
  String question;
  String answer;

  MemoryCard({this.question, this.answer});
}

class _MainScreenState extends State<MainScreen> {
  final List<MemoryCard> _cards = [
    MemoryCard(question: 'Who is the best?', answer: 'Me'),
    MemoryCard(question: 'Who is the coolest?', answer: 'Also Me')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () => setState(() => _cards.removeLast()),
            child: Card(
              child: SizedBox(
                height: 200,
                width: 100000,
                child: Center(
                  child: Text(
                    _cards.isEmpty ? 'Deck is empty' : _cards.last.question,
                  ),
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
