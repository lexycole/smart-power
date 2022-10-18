import 'package:flutter/material.dart';

class InputNumWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  const InputNumWithIcon({required this.icon, required this.hint});

  @override
  _InputNumWithIconState createState() => _InputNumWithIconState();
}

class _InputNumWithIconState extends State<InputNumWithIcon> {
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
              keyboardType: TextInputType.number,
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