import 'package:flowershopping/model/event_model.dart';
import 'package:flowershopping/widget/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../main.dart';

ColorIconText textSecondary = ColorIconText();

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Event',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              Text(
                'See All',
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
        SizedBox(height: 14),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Don\'t miss the events.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Container(
          height: 320,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            itemCount: eventDescription.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFBDBDBD), width: 0.6),
                  borderRadius: BorderRadius.circular(6),
//                    boxShadow: [
//                      BoxShadow(
//                        color: Color(0xFF757575),
//                        offset: Offset(1.0, 1.0),
//                        blurRadius: 4.0,
//                      ),
//                    ]
                ),
                width: 270,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        eventDescription[index].image,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                      top: 14,
                      right: 14,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 3.0,
                              ),
                            ]),
                        child: Icon(Icons.favorite_border,
                            color: Color(0xFF757575), size: 30),
                      ),
                    ),
                    Positioned(
                      top: 14,
                      left: 14,
                      child:
                          Label(sentence: eventDescription[index].availability),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.black54,
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                LineAwesomeIcons.calendar,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 4),
                              Text(
                                eventDescription[index].day.substring(0, 3),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: 1.2),
                              ),
                              SizedBox(width: 4),
                              Text(
                                eventDescription[index].date,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: 1.2),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6)),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            color: Theme.of(context).primaryColorLight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  eventDescription[index].eventName,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF212121),
                                  ),
                                ),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Icon(
                                      LineAwesomeIcons.map_marker,
                                      color: Color(0xFF757575),
                                      size: 20,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      eventDescription[index].location,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF757575),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'RM${eventDescription[index].price.toString()}',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'JOIN',
                                        style: TextStyle(
                                            letterSpacing: 1.2,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Theme.of(context).accentColor),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
