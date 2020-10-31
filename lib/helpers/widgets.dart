import 'package:flutter/material.dart';
import 'package:it_is_a_test/helpers/ghraphPart/proFileGraph.dart';
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
                  isDisabel ? Colors.grey.withOpacity(0.4) : kthemeBlueColor),
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
          BoxDecoration(color: kthemeBlueColor, borderRadius: kborderRadius),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Calories',
                    style: kMonseratFontStyle.copyWith(
                        fontSize: 20, color: kWhiteC)),
                Container(
                  height: 44,
                  width: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('This week',
                          style: kMonseratFontStyle.copyWith(color: kWhiteC)),
                      Icon(
                        Icons.arrow_drop_down,
                        color: kWhiteC,
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
