import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:it_is_a_test/helpers/widgest2.dart';
import 'package:it_is_a_test/helpers/widgets.dart';

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
              kProfileAvaterPart,
              // margin: EdgeInsets.only(top: 30),
              kLbsAndFeet,
              CaloriBox()
            ],
          ),
        ),
      ),
    );
  }
}
