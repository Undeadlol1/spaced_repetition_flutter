import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:spaced_repetition_flutter/screens/main/main_screen.dart';
import 'package:spaced_repetition_flutter/screens/main/widgets/tapable_card.dart';

class SwipableCards extends StatefulWidget {
  List<MemoryCard> cards = [];
  SwipableCards({Key key, this.cards}) : super(key: key);

  @override
  _SwipableCardsState createState() => _SwipableCardsState();
}

class _SwipableCardsState extends State<SwipableCards> {
  List<String> tappedCards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  swipeEdge: 4.0,
                  totalNum: widget.cards.length,
                  orientation: AmassOrientation.TOP,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) =>
                      widget.cards.length == tappedCards.length
                          ? Center(
                              child: Card(
                                child: Center(
                                  child: Text(
                                    'This was the last card!',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => _memorizeTappedCard(index),
                              child: TapableCard(
                                card: widget.cards[index],
                                restrictToSingleTap: true,
                                isCardTapped: tappedCards
                                    .contains(widget.cards[index].id),
                              ),
                            ),
                  swipeCompleteCallback: _showSnackbar,
                ))));
  }

  void _memorizeTappedCard(int index) {
    setState(() {
      tappedCards.add(widget.cards[index].id);
    });
  }

  void _showSnackbar(CardSwipeOrientation orientation, int index) {
    if (orientation != CardSwipeOrientation.RECOVER) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
              'You swiped to the ' + orientation.toString().toLowerCase())));
    }
  }
}
