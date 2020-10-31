import 'package:flutter/material.dart';
import 'constans.dart';

Widget frontHumanPhto = Image.asset(
  'images/human.png',
  height: 240,
);
TextStyle humanPFontStyle = TextStyle(
  fontFamily: 'Commissioner',
  color: Colors.white,
);
Widget sideFlatButton(String numberToshow) {
  return FlatButton(
    onPressed: () {},
    child: CircleAvatar(
      backgroundColor: kthemeBlueColor,
      child: Text(numberToshow),
    ),
  );
}

Widget kBlackMenuIcon = Icon(
  Icons.menu,
  color: Colors.black.withOpacity(0.5),
);
Icon kRightArrow({double opacity, size}) {
  return Icon(
    Icons.arrow_forward_ios,
    color: Colors.black.withOpacity(opacity),
    size: size,
  );
}

void kdoPop(BuildContext context) {
  Navigator.pop(context);
}

Container kProfileAvaterPart = Container(
  child: Column(
    children: <Widget>[
      Container(
        height: 130,
        margin: const EdgeInsets.only(top: 14),
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/ghost1.jpg'),
            ),
            Positioned(
              child: CircleAvatar(
                radius: 17,
                backgroundColor: kWhiteC,
                // backgroundImage: AssetImage('images/troffy.png'),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('images/troffy.png'),
                ),
              ),
              top: 84,
              left: 30,
            ),
          ],
        ),
      ),
      Text(
        'Istiak Ahmed',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        'Pro player',
        style:
            TextStyle(fontFamily: 'Montserrat', color: kthemeButtonColorLight),
      )
    ],
  ),
);
Padding kLbsAndFeet = Padding(
  padding: const EdgeInsets.only(top: 30),
  child: Container(
    decoration: kgrayBorderRadius,
    height: 90,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('110.3 lbs',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 23,
                    color: kthemeBlueColor)),
            SizedBox(
              height: 6,
            ),
            Text(
              'Weight',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey.withOpacity(0.9)),
            )
          ],
        ),
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
          height: 10,
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('5.3 feet',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 23,
                    color: kthemeBlueColor)),
            SizedBox(
              height: 6,
            ),
            Text(
              'Height',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey.withOpacity(0.9)),
            )
          ],
        ),
      ],
    ),
  ),
);
