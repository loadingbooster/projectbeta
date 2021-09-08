import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CteamBasketball extends StatefulWidget {
  const CteamBasketball({Key? key}) : super(key: key);

  @override
  _CteamBasketballState createState() => _CteamBasketballState();
}

class _CteamBasketballState extends State<CteamBasketball> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  color: Color(0xffb3d3d3c),
                  child: Column(
                    children: <Widget>[Container(
                      child: Center(
                        child: Text(
                          "5h 47m left",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
                        ),
                      ),
                    ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Center(
                          child: Text(
                            "Max 7 players from a team",style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            "Credits left",style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "100.0",style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                              backgroundColor: Colors.white,
                            ),
                            Column(
                              children: <Widget>[
                                Text("IND",style: TextStyle(
                                    color: Colors.white
                                ),),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("0",style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("Eng",style: TextStyle(
                                    color: Colors.white
                                ),),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("0",style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        ///color: Color(0xffb3d3d3c),
                        padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                            SizedBox(width: 2),
                            Flexible(flex:1,child: Container(height: 20,color: Colors.white,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(child: Text("WK(0)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                    Tab(child: Text("BAT(0)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
                    Tab(child: Text("AR(0)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
                    Tab(child: Text("BWL(0)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
                  ],
                ),
                Expanded(child: Container(
                  child: TabBarView(
                    children: [
                      Container(color:Colors.black,child: Center(child: Text("WK(0)",style: TextStyle(color: Colors.black),))),
                      Center(child: Text("BAT(0)",style: TextStyle(color: Colors.black))),
                      Center(child: Text("AR(0)",style: TextStyle(color: Colors.black))),
                      Center(child: Text("BWL(0)",style: TextStyle(color: Colors.black))),
                    ],
                  ),
                )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Press"),style: ElevatedButton.styleFrom(

                      ),)),
                      Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Press"))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
