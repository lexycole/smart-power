import 'package:flutter/material.dart';
import 'package:smart_power_mobile_app/screens/forgot_password_screen/components/body.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
@override
Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xFF5961E0), 
      // appBar: buildAppBar(context),
      body: Body(),
      );
    }
}

// AppBar buildAppBar (BuildContext context) {
//   return AppBar(
//     backgroundColor: Color(0xFF5961E0),
//     elevation: 0,
//          leading: IconButton(
//            icon: const Icon(Icons.arrow_back),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//     ),
//   );
// }