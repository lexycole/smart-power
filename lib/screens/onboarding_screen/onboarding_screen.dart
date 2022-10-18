import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/onboarding_screen/components/body.dart';

class OnboardingScreen extends StatelessWidget {
   const OnboardingScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return const Scaffold(
      body: 
        Body(),
      );
    }
}