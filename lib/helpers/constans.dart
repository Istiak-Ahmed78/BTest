import 'package:flutter/material.dart';

const kThemeColor = Color.fromRGBO(32, 26, 80, 1);
const korrangeC = Colors.orange;
const kgraphProgressC = Colors.white60;
const kthemeButtonColor = Color.fromRGBO(76, 66, 152, 1);
const kthemeButtonColorLight = Color.fromRGBO(83, 73, 158, 1);
const kborderRadius = BorderRadius.all(Radius.circular(30));
Container krectengulerEmtyContainer(
    {double height, double weight, Widget child, Color color}) {
  return Container(
    child: child,
    height: height,
    width: weight,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)), color: color),
  );
}

Container kemtyborderBox(
    {double height, double wight, Widget child, Color color}) {
  return Container();
}

TextStyle kTextThemeFontFamily = TextStyle(fontFamily: 'Montserrat');

BoxDecoration kgrayBorderRadius = BoxDecoration(
  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
  borderRadius: BorderRadius.all(Radius.circular(15)),
);
