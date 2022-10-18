import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/new_password_screen/components/body.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
@override
Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xFF5961E0), 
      body: Body(),
      );
    }
}