import 'dart:async';

import 'package:ejar_v/presentaion/auth/screens/login_screen.dart';
import 'package:ejar_v/presentaion/owner/screens/test_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),
            () =>Navigator.push(context,
            MaterialPageRoute(builder: (context)=>LoginScreen()))
    );

    //  Timer(Duration(seconds: 4),
    //         () =>Navigator.push(context,
    //         MaterialPageRoute(builder: (context)=>TestPage()))
    // );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/logo2.jpg"),
            width: screenWidth/2,
            height: screenHeight/4,
          ),
        ),
      ),
    );
  }
}
