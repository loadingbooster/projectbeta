import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrevFootball extends StatefulWidget {
  const PrevFootball({Key? key}) : super(key: key);

  @override
  _PrevFootballState createState() => _PrevFootballState();
}

class _PrevFootballState extends State<PrevFootball> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/soccerground.png"
                ),
                  fit: BoxFit.fitHeight
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.white.withOpacity(0.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/player.png"),
                                    fit: BoxFit.fitHeight
                                )
                            ),
                          )),
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "J. Buttler",style: TextStyle(
                              fontSize: 10
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.white.withOpacity(0.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/player.png"),
                                        fit: BoxFit.fitHeight
                                    )
                                ),
                              )),
                          Container(
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "J. Buttler",style: TextStyle(
                                  fontSize: 10
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.white.withOpacity(0.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/player.png"),
                                    fit: BoxFit.fitHeight
                                )
                            ),
                          )),
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "J. Buttler",style: TextStyle(
                              fontSize: 10
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.white.withOpacity(0.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/player.png"),
                                    fit: BoxFit.fitHeight
                                )
                            ),
                          )),
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "J. Buttler",style: TextStyle(
                              fontSize: 10
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
