import 'dart:ui';
import 'package:projectbeta/accounts/myaccount.dart';
import 'package:projectbeta/accounts/wallet.dart';
import 'package:projectbeta/cricketcostest.dart';
import 'package:projectbeta/cteamcrick/cricket.dart';
import 'package:projectbeta/cteamcrick/football.dart';
import 'package:projectbeta/homescreen/homescreen.dart';
import 'package:projectbeta/landingpage/landingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectbeta/registeration/regesteration.dart';
import 'package:projectbeta/teampreview/tprevcricket.dart';
import 'package:projectbeta/teampreview/tprevfootball.dart';

  void main(){
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
            home: Homescreen()
      );
    }
  }



