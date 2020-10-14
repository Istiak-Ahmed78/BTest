import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:it_is_a_test/constants.dart';

import 'package:it_is_a_test/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      // margin: con,
                      height: 45,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black.withOpacity(0.07)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 17,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                  Container(
                    height: 45,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(
                      Icons.more_horiz,
                      size: 20,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Container(
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
                              backgroundColor: Colors.white,
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
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: kthemeButtonColorLight),
                    )
                  ],
                ),
              ),
              // margin: EdgeInsets.only(top: 30),
              Padding(
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
                                  color: kthemeButtonColor)),
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
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orange),
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
                                  color: kthemeButtonColor)),
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
              ),
              CaloriBox()
            ],
          ),
        ),
      ),
    );
  }
}
