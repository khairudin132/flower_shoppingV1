import 'package:flowershopping/model/flower_model.dart';
import 'package:flowershopping/widget/carousel.dart';
import 'package:flutter/material.dart';
//import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String _brokenHeart = 'images/heart-broken-solid.svg';
final Widget _brokenHeartIcon = SvgPicture.asset(
  _brokenHeart,
  color: Color(0xFFBDBDBD),
  width: 140,
  height: 140,
);

class SavedScreen extends StatelessWidget {
  final Flower flower;
  SavedScreen({this.flower});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Saved'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'images/broken-pot.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Opacity(
              opacity: 0.4,
              child: Container(
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _brokenHeartIcon,
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'You Don\'t Make Any\nFirst Love Yet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Text(
                    'Why not to give it a try...',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 30),
                  Carousel(
                    isTitle: false,
                    category: newFlower,
                    numSold: false,
                    title: 'Newly Arrived',
                    carouselWidth: 180,
                    carouselHeight: 230,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
