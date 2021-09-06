import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'My Matches',
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
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 20),

              child: Column(
                children: <Widget>[
                  Center(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                    child: Image.asset("assets/images/cricketball2.png"),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                  child: Image.asset("assets/images/football.png"),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                  child: Image.asset("assets/images/basketball.png"),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                  child: Image.asset("assets/images/badminton2.png"),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                  child: Image.asset("assets/images/baseball2.png"),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 40,width: 40,
                                  margin: EdgeInsets.only(right: 5.0),
                                  child: Image.asset("assets/images/nfl2.png"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Live Matches",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                          childAspectRatio: (100 /200),),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index)=>Listitemlivematches()),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.center,
                          child: Text(
                            "Upcoming Matches",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                        )
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                          childAspectRatio: (150 /500), ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index)=>Listitemgames()),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Matches",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Listitemgames extends StatefulWidget {
  const Listitemgames({Key? key}) : super(key: key);

  @override
  _ListitemgamesState createState() => _ListitemgamesState();
}

class _ListitemgamesState extends State<Listitemgames> {
   
  
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

class Listitemlivematches extends StatefulWidget {
  const Listitemlivematches({Key? key}) : super(key: key);

  @override
  _ListitemlivematchesState createState() => _ListitemlivematchesState();
}

class _ListitemlivematchesState extends State<Listitemlivematches> {
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
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                ":",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "0",
                style: TextStyle(
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

        //    gradient: LinearGradient(
        //    begin: Alignment.topLeft,
        //  end: Alignment.bottomRight,
        //colors: [Colors.red,Colors.black87,Colors.green],
        // ),
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



