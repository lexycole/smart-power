import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/first_onboarding_screen.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstOnboardingScreen()
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5961E0),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/logo.png', height: 200, width: 150),
            const SizedBox(height: 10),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/Onboarding_Indicator_1.png', 
                // height: 200, 
                width: 150),
                // const SizedBox(height: 10),
              ]
            ),
          //   const SizedBox(height: 10),
          //     if(Platform.isIOS)
          //       const CupertinoActivityIndicator(
          //         radius: 30,
          //     )
          // else
          // const CircularProgressIndicator(
          //   color: Colors.white,
          //   )
          ]
        )
      )
    );
  }
}