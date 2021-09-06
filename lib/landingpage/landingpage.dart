import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:projectbeta/landingpage/landingpage.dart';
import 'package:projectbeta/registeration/regesteration.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();


}

class _LandingPageState extends State<LandingPage>{


  double opacity = 0.2;
  var height = 300.0;
  int open = 0;

  @override

  void initState(){
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible){
        setState(() {
          if(visible){
            height = 200.0;
          }
          else
            height = 500.0;
        });
      },
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
        children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
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
          duration: Duration(
            milliseconds: 1000
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(opacity),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          ),
          padding: EdgeInsets.all(20),
          transform: Matrix4.translationValues(0, height, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
                child: Center(
                  child: Text(
                      "Let's Play",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white.withOpacity(opacity))
                  ),
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Registeration()),
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
        )
        ],
        ),
      ),
    );
  }
}
//class LoginButton extends StatefulWidget {

  //@override
 // _LoginButtonState createState() => _LoginButtonState();
//}

//class _LoginButtonState extends State<LoginButton> {
  //@override
  //Widget build(BuildContext context) {
   // return
 // }
//}

class PhoneField extends StatefulWidget {
  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: "Phone Number"
        ),
    );
  }
}




