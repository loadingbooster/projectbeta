import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbeta/homescreen/homescreen.dart';

class OtpField extends StatefulWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        // child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        color: Colors.black
                        ,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/start4.jpg",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70,left: 10),
                      child: Text(
                        "Verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                        ),
                      ),
                    ),
                    Container(
                            transform: Matrix4.translationValues(0, 200, 0),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                            color: Colors.white.withOpacity(0.2)
                            ),
                            padding: EdgeInsets.all(20),
                      child: Column(
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Text(
                                "We've sent a 6 digit verification code",
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                                ),
                                ),
                                ),
                                TextField(
                                decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white.withOpacity(0.2))
                                ),
                                hintText: "Enter 6 digit code",
                                hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                )
                                ),
                                ),
                                Container(
                                margin: EdgeInsets.symmetric(vertical: 30),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: ElevatedButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>Homescreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                                ),
                                padding: EdgeInsets.symmetric(vertical: 20),
                                primary: Colors.green.shade900
                                ),
                                child: Text("CONTINUE",style: TextStyle(fontWeight: FontWeight.bold),)),
                                ),
                                ],
                                ),
                        ),
                        ],
                        )
                        )
                  ],
                ),
              )

            ],
          )
        ),
      ),
    );
  }
}
