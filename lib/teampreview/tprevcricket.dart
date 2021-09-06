import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewCrick extends StatefulWidget {
  const PreviewCrick({Key? key}) : super(key: key);

  @override
  _PreviewCrickState createState() => _PreviewCrickState();
}

class _PreviewCrickState extends State<PreviewCrick> {

  double size = 50.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cricketground.png"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                      height: size,
                      width: size,
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
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
