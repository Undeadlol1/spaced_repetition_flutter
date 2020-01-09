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
  @override
  Widget build(BuildContext context) {
    // CardController controller; //Use this to trigger swap.

    return new Scaffold(
      body: new Center(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: widget.cards.length,
                  stackNum: 2,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => TapableCard(
                        card: widget.cards[index],
                        restrictToSingleTap: true,
                      ),
                  // cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    print(details);

                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text(orientation.toString())));

                    /// Get orientation & index of swiped card!
                  }))),
    );
  }
}
