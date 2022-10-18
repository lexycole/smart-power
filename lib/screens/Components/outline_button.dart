import 'package:flutter/material.dart';

class OutlineBtn extends StatefulWidget {
  final String btnText;
  const OutlineBtn({required this.btnText});

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFB40284A),
          width: 2
        ),
        borderRadius: BorderRadius.circular(50)
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: const TextStyle(
              color: Color(0xFFB40284A),
              fontSize: 16
          ),
        ),
      ),
    );
  }
}
