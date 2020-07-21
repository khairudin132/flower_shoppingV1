import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:line_awesome_icons/line_awesome_icons.dart';
import '../main.dart';

ColorIconText disabledIcon = ColorIconText();

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF757575),
              offset: Offset(0.0, 0.0),
              blurRadius: 4.0,
            ),
          ]),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 24,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Icon(LineAwesomeIcons.search,
                      size: 20.0, color: disabledIcon.disabledIcon),
                ),
                SizedBox(width: 24),
                Text('Flower/Location',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFBDBDBD),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
