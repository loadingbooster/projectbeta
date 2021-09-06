import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:projectbeta/registeration/otp.dart';

class Registeration extends StatefulWidget {

  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {

  var height = 200.0;
  var opacity = 0.18;

  @override

  void initState(){
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible){
        setState(() {
          if(visible){
            height = 50.0;
          }
          else
            height = 200.0;
        });
      },
    );
  }

  Widget build(BuildContext context) {
   // double windowHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
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
                    color: Colors.green
                )
                      ],
                    ),
             ),
             AnimatedContainer(
               transform: Matrix4.translationValues(0, height, 0),
               color: Colors.white.withOpacity(0.0),
               duration: Duration(
                 milliseconds: 1000
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: <Widget>[
                   Container(
                     decoration: BoxDecoration(
                        color: Colors.black
                    ),
                     margin: EdgeInsets.only(bottom: 30,left: 10),
                     child: Text(
                       "Register",
                       style: TextStyle(
                         fontSize: 30,
                         color: Colors.white
                       ),
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       color: Colors.white.withOpacity(opacity),
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                     ),
                     child: Wrap(
                       runSpacing: 30,
                       children: <Widget>[
                         TextField(
                           decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.white.withOpacity(opacity)),
                               ),
                             hintText: "Enter Full Name",
                             hintStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 13,
                             )
                           ),
                         ),
                         TextField(
                           decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.white.withOpacity(opacity)),
                               ),
                               hintText: "Enter Email Address",
                               hintStyle: TextStyle(
                                   color: Colors.white,
                                 fontSize: 13,
                               )

                           ),
                         ),
                         TextField(
                           decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.white.withOpacity(opacity)),
                               ),
                               hintText: "Enter Phone Number",
                               hintStyle: TextStyle(
                                   color: Colors.white,
                                 fontSize: 13,
                               )
                           ),
                         ),
                       ],
                     ),
                   ),
                   Container(
                     color: Colors.white.withOpacity(opacity),
                     child: Center(child: Text("We will send you a verification code",style: TextStyle(color: Colors.white.withOpacity(opacity),fontSize: 15),)),
                   ),
                   SizedBox(
                     height: 30,
                     child: Container(
                       color: Colors.white.withOpacity(opacity),
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 30),
                     color: Colors.white.withOpacity(opacity),
                     child: ElevatedButton(onPressed: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context)=>OtpField()),
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
                   Expanded(
                     child: Container(
                       color: Colors.white.withOpacity(opacity),
                     ),
                   )
                 ],
               ),
             )
           ],
          ),
      ),

    );
  }
}
