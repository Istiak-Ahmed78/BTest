import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../constans.dart';

class AllGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          singleGraph(56, 'M'),
          singleGraph(100, 'T'),
          singleGraph(70, 'W'),
          singleGraph(50, 'T', isMiddle: true),
          singleGraph(70, 'F'),
          singleGraph(40, 'S'),
          singleGraph(20, 'S')
        ],
      ),
    );
  }
}

Column singleGraph(int persnet, String dayLetter, {bool isMiddle = false}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      isMiddle
          ? Text(
              '590',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          : Container(),
      Container(
        height: isMiddle ? 40 : 80,
        child: FAProgressBar(
          // displayText: '12',
          currentValue: isMiddle ? 100 : persnet,
          progressColor: isMiddle ? korrangeC : kgraphProgressC,
          direction: Axis.vertical,
          verticalDirection: VerticalDirection.up,
          size: 8,
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        dayLetter,
        style: TextStyle(color: kgraphProgressC),
      )
    ],
  );
}
