import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowershopping/model/fact_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FactSlide extends StatelessWidget {
  final FactDescription fact;
  FactSlide({this.fact});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: EdgeInsets.only(bottom: 18),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
        itemCount: factCard.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF757575),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    factCard[index].imageUrl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 15,
                  left: 9,
                  child: Container(
                    child: Text(
                      factCard[index].description.toUpperCase(),
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        letterSpacing: 1,
                        height: 1.4,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
