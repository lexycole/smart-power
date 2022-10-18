import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String btnText;
  const PrimaryButton({required this.btnText});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF5961E0), 
        borderRadius: BorderRadius.circular(50) 
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}