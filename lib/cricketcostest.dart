import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbeta/cteamcrick/cricket.dart';

class CricketContest extends StatefulWidget {
  const CricketContest({Key? key}) : super(key: key);

  @override
  _CricketContestState createState() => _CricketContestState();
}

class _CricketContestState extends State<CricketContest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30),
            height: 100,
            color: Colors.blue,
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text("SSMG VS DAE",style: TextStyle(color: Colors.white),)),
          ),
          TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(child: Text("Contests",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              Tab(child: Text("My Contests",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
              Tab(child: Text("My Teams",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
            ],
          ),
          Expanded(child: Container(
            child: TabBarView(
              children: [
              //  Container(color:Colors.black,child: Center(child: Text("WK(0)",style: TextStyle(color: Colors.black),))),
                Center(child: Expanded(child: Container(
                 child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 2,
                          mainAxisSpacing: 5),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context,index)=>CricketContestEntry()),
                ))),
                Center(child: Text("AR(0)",style: TextStyle(color: Colors.black))),
                Center(child: Text("BWL(0)",style: TextStyle(color: Colors.black))),
              ],
            ),
          )),
          Container(
            height: 40,
            color: Colors.blue,
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>CteamCrick()),
              );
            }, child: Text("Create Team")),
          )
        ],
      ),
    ),));
  }
}
class CricketContestEntry extends StatefulWidget {
  const CricketContestEntry({Key? key}) : super(key: key);

  @override
  _CricketContestEntryState createState() => _CricketContestEntryState();
}

class _CricketContestEntryState extends State<CricketContestEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: <Widget>[
              Align(alignment: Alignment.centerLeft,child: Text("Mega Contest",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
              SizedBox(height: 5,),
              Align(alignment: Alignment.centerLeft,child: Text("Get ready for mega winnings",style: TextStyle(fontSize: 10),)),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey,width: 0.5),
                 ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[Expanded(child: Text("Prize Pool",style: TextStyle(color:Colors.grey,fontSize: 10),)),Expanded(child: Align(alignment: Alignment.centerRight,child: Text("Entry",style: TextStyle(color:Colors.grey,fontSize: 10))))],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[Expanded(child: Text("₹5 Lakhs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),Container(decoration: BoxDecoration(color:Colors.blue, borderRadius: BorderRadius.circular(5)),padding:EdgeInsets.symmetric(horizontal: 15,vertical: 3),child: Text("₹25",style: TextStyle(color: Colors.white,fontSize: 10),),)],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 10,
                       child: SizedBox(
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            color: Colors.blue,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[Expanded(child: Text("18,406 sports left",style: TextStyle(fontSize: 10),)),Container(child: Text("26,595 spots",style: TextStyle(fontSize: 10),),)],
                    ),
                  ],
                ),
              )
            ],
        ),
    );
  }
}

