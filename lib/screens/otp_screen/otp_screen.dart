import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/otp_screen/components/body.dart';

class OTPPassword extends StatefulWidget {
  const OTPPassword({Key? key}) : super(key: key);

  @override
  State<OTPPassword> createState() => _OTPPasswordState();
}

class _OTPPasswordState extends State<OTPPassword> {
@override
Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xFF5961E0), 
      body: Body(),
      );
    }
}