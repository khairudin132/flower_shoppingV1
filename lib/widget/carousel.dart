import 'package:flowershopping/model/flower_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

ColorIconText textSecondary = ColorIconText();

class Carousel extends StatelessWidget {
  @required
  final String title;
  @required
  final List<Flower> category;
  @required
  final double carouselWidth;
  @required
  final double carouselHeight;
  @required
  final bool numSold;
  @required
  final bool isTitle;
  final Flower flower;
  Carousel(
      {this.title,
      this.flower,
      this.numSold,
      this.carouselWidth,
      this.carouselHeight,
      this.category,
      this.isTitle});

//  getImage(int index) {
//    if (title == 'Newly Arrived') {
//      return popularFlower[index].imageUrl;
//    } else if (title == 'Popular Flower') {
//      return popularFlower[index].imageUrl;
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isTitle
            ? Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    Text(
                      'See All',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ],
                ),
              )
            : SizedBox(height: 14),
        Container(
          height: carouselHeight,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            itemCount: category.length,
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
                width: carouselWidth,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        category[index].imageUrl,
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
                              category[index].name.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF212121),
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'RM${category[index].price.toString()}',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                            numSold
                                ? Container(
                                    margin: EdgeInsets.only(top: 7),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '${category[index].sold.toString()} sold',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: textSecondary
                                                  .textSecondaryColor),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
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
