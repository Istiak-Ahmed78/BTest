import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/welcomePage.dart';

class HumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.9),
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
                  fontSize: 30,
                  fontFamily: 'Commissioner',
                ),
              ),
              Text(
                'The way you want it.',
                style: TextStyle(
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
                      child: Text('1'),
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
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: CircleAvatar(
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
