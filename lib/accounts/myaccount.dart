import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text(
                        "Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/profileavatar.png"
                        )
                      ),
                    ),
                  ),
                  Text("Player Name",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),)
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15,top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    color: Color(0xffb131d24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.account_box_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                "Leaderboard",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.assignment_late_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  "Support",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.assignment,
                                color: Colors.white,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.assignment,
                                color: Colors.white,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  "FAQs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
