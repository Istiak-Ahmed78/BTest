import 'package:flutter/material.dart';
import 'package:it_is_a_test/Pages/profilePage.dart';
import 'package:it_is_a_test/helpers/constans.dart';
import 'package:it_is_a_test/helpers/widgest2.dart';
import 'package:it_is_a_test/helpers/widgets.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteC,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
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
                      child: kBlackMenuIcon,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
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
                      style: kPoppinFontStyle.copyWith(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                    Text('Good Morning',
                        style: kPoppinFontStyle.copyWith(color: Colors.grey)),
                  ],
                ),
              ),
              // margin: const EdgeInsets.only(top: 20, left: 18, right: 18),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
                child: krectengulerEmtyContainer(
                  color: kthemeBlueColor,
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
                                  style:
                                      TextStyle(color: kWhiteC, fontSize: 22),
                                ),
                                Text('progress🔥',
                                    style:
                                        TextStyle(color: kWhiteC, fontSize: 22))
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  kRightArrow(opacity: 0.35, size: 12.0),
                                  kRightArrow(opacity: 0.35, size: 17.0),
                                  kRightArrow(opacity: 0.45, size: 20.0)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: kWhiteC,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 40,
                              width: 80,
                            ),
                          ),
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
                  style: kPoppinFontStyle.copyWith(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                margin: const EdgeInsets.only(top: 20, left: 20),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: kprocessLine(
                    //kprocessLine is in widgets.dart
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
                          color: kthemeBlueColor,
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
