import 'package:flutter/material.dart';
import 'package:spaced_repetition_flutter/screens/main/widgets/swipable_cards.dart';

class MemoryCard {
  String id;
  String question;
  String answer;

  MemoryCard({this.id, this.question, this.answer});
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<MemoryCard> _cards = [
    MemoryCard(id: '123', question: 'Who is the best?', answer: 'Me'),
    MemoryCard(id: '321', question: 'Who is the coolest?', answer: 'Also Me')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwipableCards(cards: _cards),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () => Navigator.pushNamed(context, '/create_card'),
      ),
    );
  }
}
