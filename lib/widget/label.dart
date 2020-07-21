import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String sentence;
  Label({this.sentence});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        sentence,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            letterSpacing: 1),
      ),
    );
  }
}
