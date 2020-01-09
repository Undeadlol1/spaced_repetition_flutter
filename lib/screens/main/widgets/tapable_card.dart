import 'package:flutter/material.dart';
import 'package:spaced_repetition_flutter/screens/main/main_screen.dart';

// TODO fix or remove ability to tap

class TapableCard extends StatefulWidget {
  MemoryCard card;
  bool restrictToSingleTap = false;
  bool isCardTapped = false;
  TapableCard({Key key, this.card, this.restrictToSingleTap, this.isCardTapped})
      : super(key: key);

  @override
  _TapableCardState createState() => _TapableCardState();
}

class _TapableCardState extends State<TapableCard> {
  bool _isCardTapped = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        // onTap: () => setState(() {
        //   if (widget.isCardTapped && widget.restrictToSingleTap)
        //     return;
        //   else
        //     _isCardTapped = !_isCardTapped;
        // }),
        child: Card(
          child: SizedBox(
            height: 200,
            width: 100000,
            child: Center(
              child: Text(widget.isCardTapped
                  ? widget.card.answer
                  : widget.card.question),
            ),
          ),
        ),
      ),
    );
  }
}
