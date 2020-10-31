import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/welcomePage.dart';
import 'package:it_is_a_test/helpers/constans.dart';

class HumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'images/human.png',
              height: 240,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                'Build your body',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  fontFamily: 'Commissioner',
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'The way you want it.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Commissioner',
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
                  child: FlatButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: kthemeButtonColor,
                      child: Text('6'),
                    ),
                  ),
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
                      color: kthemeButtonColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: kthemeButtonColor,
                      child: Text('3'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
