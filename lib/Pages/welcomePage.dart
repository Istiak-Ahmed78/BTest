import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/profilePage.dart';
import 'package:it_is_a_test/helpers/constans.dart';
import 'package:it_is_a_test/helpers/widgets.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 12),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.03),
                      radius: 22,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('images/ghost1.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello Istiak,',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Good Morning',
                      style:
                          TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // margin: const EdgeInsets.only(top: 20, left: 18, right: 18),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
                child: krectengulerEmtyContainer(
                  color: kthemeButtonColor,
                  height: 132,
                  weight: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Your Weekly',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                Text('progress🔥',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22))
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black.withOpacity(0.35),
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black.withOpacity(0.35),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.45),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 40,
                              width: 80,
                            ),
                          ),
                          // CustomPaint(
                          //   painter: ProgressBoxPaint(),
                          //   child: Container(),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                child: Text(
                  'Today\'s Workouts',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
                margin: const EdgeInsets.only(top: 20, left: 20),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                //kprocessLine is in widgets.dart
                child: kprocessLine(
                    context: context,
                    boxLeadingIcon: Icons.code,
                    iconOncircle: Icons.check,
                    boxMiddleText: 'Treademill',
                    boxTrailing: Text(
                      '30min',
                      style:
                          kTextThemeFontFamily.copyWith(color: Colors.orange),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                //kprocessLine is in widgets.dart
                child: kprocessLine(
                    context: context,
                    boxLeadingIcon: Icons.directions_car,
                    iconOncircle: Icons.arrow_drop_down_circle,
                    boxMiddleText: 'Dumbell',
                    boxTrailing: Container(
                      height: 15,
                      width: 35,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                          color: kthemeButtonColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                //kprocessLine is in widgets.dart
                child: kprocessLine(
                    context: context,
                    boxLeadingIcon: Icons.strikethrough_s,
                    iconOncircle: Icons.arrow_drop_down_circle,
                    boxMiddleText: 'Dumbell',
                    boxTrailing: Text(
                      '15 min',
                      style:
                          kTextThemeFontFamily.copyWith(color: Colors.orange),
                    ),
                    isDisabel: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
