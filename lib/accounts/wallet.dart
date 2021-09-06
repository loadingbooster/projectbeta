import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            //Container(child: Text("Wallet",style: TextStyle(color: Colors.white),),),
            Container(margin: EdgeInsets.only(top: 60),child: Center(child: Container(child:Text("₹5000",style: TextStyle(color: Color(0xffbfafafb),fontWeight: FontWeight.bold,fontSize: 30),),))),
            Container(margin: EdgeInsets.only(bottom: 60),child: Text("In your wallet",style: TextStyle(color: Color(0xffb5d6064)),),),
            Row(
              children: <Widget>[
                Expanded(flex:1,child: Container(
                  margin: EdgeInsets.only(left: 30),
                  child: ElevatedButton(onPressed: (){},child: Text("Add Money",style: TextStyle(fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 30,),
                    primary: Colors.green
                    ),),
                )),
                Expanded(flex:1,child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: ElevatedButton(onPressed: (){},child: Text("Withdraw Money",style: TextStyle(fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
                      ),
                      padding: EdgeInsets.symmetric(vertical: 30),
                      primary: Colors.green
                  ),),
                )),
              ],
            ),
            Expanded(
              child: Container(
               // margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 30,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                  color: Color(0xffb131d24),
                ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                    childAspectRatio: 3.5,
                    mainAxisSpacing: 30),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>ListitemTrans()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ListitemTrans extends StatefulWidget {
  const ListitemTrans({Key? key}) : super(key: key);

  @override
  _ListitemTransState createState() => _ListitemTransState();
}

class _ListitemTransState extends State<ListitemTrans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Title",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Purpose",style: TextStyle(color: Color(0xffb5d6064)),),
              Text("Date",style: TextStyle(color: Color(0xffbaeafaf)),),
            ],
          )
        ],
      )
    );
  }
}

