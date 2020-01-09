import 'package:flutter/material.dart';
import 'package:spaced_repetition_flutter/screens/main/main_screen.dart';

class TapableCard extends StatefulWidget {
  MemoryCard card;
  bool restrictToSingleTap = false;
  TapableCard({Key key, this.card, this.restrictToSingleTap}) : super(key: key);

  @override
  _TapableCardState createState() => _TapableCardState();
}

class _TapableCardState extends State<TapableCard> {
  bool _isCardTapped = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => setState(() {
          if (_isCardTapped && widget.restrictToSingleTap)
            return;
          else
            _isCardTapped = !_isCardTapped;
        }),
        child: Card(
          child: SizedBox(
            height: 200,
            width: 100000,
            child: Center(
              child: Text(
                  _isCardTapped ? widget.card.answer : widget.card.question),
            ),
          ),
        ),
      ),
    );
  }
}
