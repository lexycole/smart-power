import 'package:flutter/material.dart';

class InputTextWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  const InputTextWithIcon({required this.icon, required this.hint});

  @override
  _InputTextWithIconState createState() => _InputTextWithIconState();
}

class _InputTextWithIconState extends State<InputTextWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
    child:Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFBC7C7C7),
          width: 2
        ),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 60,
            child: Icon(
              widget.icon,
              size: 20,
              color: const Color(0xFFBB9B9B9),
            )
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                border: InputBorder.none,
                hintText: widget.hint
              ),
            ),
          )
        ],
      ),
    ),
  );
  }
}