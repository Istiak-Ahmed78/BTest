import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/welcomePage.dart';
import 'package:it_is_a_test/helpers/constans.dart';
import '../helpers/widgest2.dart';

class HumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: frontHumanPhto,
          ),
          Column(
            children: <Widget>[
              Text(
                'Build your body',
                style: humanPFontStyle.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'The way you want it.',
                style: humanPFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: sideFlatButton('3'), //find it in widget2
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white70,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: kthemeBlueColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: sideFlatButton('6'), //find it in widget2
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
