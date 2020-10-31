import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'constans.dart';

Container lineBox(
    {IconData leadingIcon,
    String middleT,
    Widget trailing,
    BuildContext context}) {
  return Container(
    height: 90,
    width: MediaQuery.of(context).size.width - 60,
    decoration: kgrayBorderRadius,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          leadingIcon,
          color: korrangeC,
        ),
        Text(
          middleT,
          style: kTextThemeFontFamily.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing
      ],
    ),
  );
}

Row kprocessLine(
    {BuildContext context,
    IconData iconOncircle,
    IconData boxLeadingIcon,
    String boxMiddleText,
    bool isDisabel = false,
    Widget boxTrailing}) {
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  isDisabel ? Colors.grey.withOpacity(0.4) : kthemeButtonColor),
          child: isDisabel
              ? null
              : Icon(
                  iconOncircle,
                  size: 17,
                  color: Colors.white,
                ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: lineBox(
            leadingIcon: boxLeadingIcon,
            middleT: boxMiddleText,
            trailing: boxTrailing,
            context: context),
      ),
    ],
  );
}

class CaloriBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 38),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      height: 220,
      width: double.infinity,
      decoration:
          BoxDecoration(color: kthemeButtonColor, borderRadius: kborderRadius),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Calories',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 20),
                ),
                Container(
                  height: 44,
                  width: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'This week',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.12),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                )
              ],
            ),
          ),
          AllGraph()
        ],
      ),
    );
  }
}

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
