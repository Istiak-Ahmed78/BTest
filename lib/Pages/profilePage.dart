import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

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
                  Container(
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
                              backgroundImage: AssetImage('images/troffy.png'),
                            ),
                            top: 81,
                            left: 22,
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
                          color: Colors.blue.withOpacity(0.8)),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
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
                                color: Colors.blue.withOpacity(0.8))),
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
                                color: Colors.blue.withOpacity(0.8))),
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
              Container(
                margin: const EdgeInsets.only(top: 38),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: <Widget>[
                    Row(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
