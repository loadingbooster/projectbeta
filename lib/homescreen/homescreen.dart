import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbeta/accounts/myaccount.dart';
import 'package:projectbeta/accounts/wallet.dart';
import 'package:projectbeta/cricketcostest.dart';

class Homescreen extends StatefulWidget {

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _currentindex,
            onTap: (index){
                if(index==2){
                  print(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Wallet()),
                  );
                }if(index==3){
                  print(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MyAccount()),
                  );
                }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
               // backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'My Matches',
            //    backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
              ),
            ],
          ),
          //cricketball2.png
          //football.png
          //basketball.png
          //badminton2.png
          //baseball2.png
          //nfl2.png
         body: Container(
           color: Colors.white,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               Container(
                 margin: EdgeInsets.only(top: 20,bottom: 30),
                 child: TabBar(
                   indicatorColor: Colors.blue,
                   indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 1.0),  insets: EdgeInsets.symmetric(horizontal:50.0)),
                   tabs: [
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/cricketball2.png"))))),SizedBox(height: 5,),Text("Cricket",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/football.png"))))),SizedBox(height: 5,),Text("Football",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/basketball.png"))))),SizedBox(height: 5,),Text("Basketball",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/badminton2.png"))))),SizedBox(height: 5,),Text("Badminton",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/baseball2.png"))))),SizedBox(height: 5,),Text("Baseball",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     Tab(child: Container(child:Column(children: <Widget>[Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/nfl2.png"))))),SizedBox(height: 5,),Text("NFL",style: TextStyle(color: Colors.black,fontSize: 9),)],))),
                     ],
                 ),
               ),
               Container(padding: EdgeInsets.only(left:10),margin: EdgeInsets.only(bottom: 30),
                 child: Row(
                   children: [
                     Container(height: 10,width: 10,decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),),Text("Live Matches",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
                   ],
                 ),
               ),
               Expanded(child: Container(
                 child: TabBarView(
                   children: [
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivematchescricket()),
                     ),
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivefootball()),
                     ),
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivebasket()),
                     ),
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivebadminton()),
                     ),
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivebaseball()),
                     ),
                     Container(
                       child: GridView.builder(
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 1,
                               childAspectRatio: 2,
                               mainAxisSpacing: 30),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                           itemBuilder: (context,index)=>Listitemlivenfl()),
                     ),
                   ],
                 ),
               )),
            ],
           ),
         ),
        ),
      ),
    );
  }
}

class Listitemgamescricket extends StatefulWidget {
  const Listitemgamescricket({Key? key}) : super(key: key);

  @override
  _ListitemgamescricketState createState() => _ListitemgamescricketState();
}

class _ListitemgamescricketState extends State<Listitemgamescricket> {
   
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
              flex: 1,
            child: Container(
            decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/football.png"),
                   )
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "00:00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15
                ),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/football.png"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
          ),
        ],
      ),
      decoration: BoxDecoration(
     //     boxShadow: [
       //     BoxShadow(
         //     color: Colors.grey.withOpacity(0.5),
           //   spreadRadius: 2,
             // blurRadius: 2,
       //       offset: Offset(0,5),
         //   ),
       //   ],
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1
        )
      ),
    );
  }
}

class Listitemlivematchescricket extends StatefulWidget {
  const Listitemlivematchescricket({Key? key}) : super(key: key);

  @override
  _ListitemlivematchescricketState createState() => _ListitemlivematchescricketState();
}

class _ListitemlivematchescricketState extends State<Listitemlivematchescricket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              ),
            ],
           borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
               // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
               // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                       Expanded(flex:2,child: Container(
                         height: 10,
                       width: 10,
                       decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/mi.png'),
                            fit: BoxFit.contain,
                          ),
                    ),
                ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                     // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                     // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}





class Listitemlivefootball extends StatefulWidget {
  const Listitemlivefootball({Key? key}) : super(key: key);

  @override
  _ListitemlivefootballState createState() => _ListitemlivefootballState();
}

class _ListitemlivefootballState extends State<Listitemlivefootball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mi.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}



class Listitemlivebasket extends StatefulWidget {
  const Listitemlivebasket({Key? key}) : super(key: key);

  @override
  _ListitemlivebasketState createState() => _ListitemlivebasketState();
}

class _ListitemlivebasketState extends State<Listitemlivebasket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mi.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class Listitemlivebadminton extends StatefulWidget {
  const Listitemlivebadminton({Key? key}) : super(key: key);

  @override
  _ListitemlivebadmintonState createState() => _ListitemlivebadmintonState();
}

class _ListitemlivebadmintonState extends State<Listitemlivebadminton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mi.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}


class Listitemlivebaseball extends StatefulWidget {
  const Listitemlivebaseball({Key? key}) : super(key: key);

  @override
  _ListitemlivebaseballState createState() => _ListitemlivebaseballState();
}

class _ListitemlivebaseballState extends State<Listitemlivebaseball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mi.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}


class Listitemlivenfl extends StatefulWidget {
  const Listitemlivenfl({Key? key}) : super(key: key);

  @override
  _ListitemlivenflState createState() => _ListitemlivenflState();
}

class _ListitemlivenflState extends State<Listitemlivenfl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>CricketContest()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                  color: Colors.black,
                  width: 0.2
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black,width: 0.2))
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Cricket IPL",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
              Expanded(child: Container(
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Mumbai Indians",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mi.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("9h:50m:12s",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )),
                    Expanded(child: Container(
                      // color:Colors.pink,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(flex:1,child: Center(child: Text("Chennai Super Kings",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)))),
                          Expanded(flex:2,child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/csk.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}









