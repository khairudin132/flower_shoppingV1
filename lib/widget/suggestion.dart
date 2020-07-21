import 'package:flowershopping/model/suggestion_model.dart';
import 'package:flowershopping/widget/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

ColorIconText textSecondary = ColorIconText();

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Suggestion',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        SizedBox(height: 14),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'They care for you and want to share the best flower for you.',
              style: Theme.of(context).textTheme.bodyText1,
            )),
        SizedBox(height: 14),
        Container(
          height: 402,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            itemCount: suggestionFlower.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.asset(
                              suggestionFlower[index].plantImage,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 200,
                            ),
                            Container(
                              width: double.infinity,
                              color: Colors.black54,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    suggestionFlower[index]
                                        .plantName
                                        .toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        letterSpacing: 1.2),
                                  ),
                                  SizedBox(height: 8),
                                  Label(
                                      sentence: suggestionFlower[index]
                                          .plantCategory),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    suggestionFlower[index].starRating,
                                    style: TextStyle(letterSpacing: 4),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    '${suggestionFlower[index].recommended} recommended',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF757575),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'RM${suggestionFlower[index].price.toString()}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Icon(Icons.favorite_border,
                                      color: Color(0xFF757575), size: 26),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          child: Divider(
                            thickness: 0.5,
                            height: 1,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          child: Text(
                            'What they said: ',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(14, 0, 14, 14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    suggestionFlower[index].userImage),
                                radius: 26,
                              ),
                              SizedBox(width: 14),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    suggestionFlower[index].userName,
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 170,
                                    child: Text(
                                      '"${suggestionFlower[index].userComment}"',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          color:
                                              textSecondary.textSecondaryColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
