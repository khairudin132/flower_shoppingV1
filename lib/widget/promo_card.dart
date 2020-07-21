import 'package:flowershopping/model/promo_model.dart';
import 'package:flowershopping/widget/label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

ColorIconText textPrimary = ColorIconText();

final List<Widget> listCard = [
  PromoCard(
    title: promoDescription[0].title,
    image: promoDescription[0].imageUrl,
    date: promoDescription[0].date,
    discount: promoDescription[0].discount,
  ),
  PromoCard(
    title: promoDescription[1].title,
    image: promoDescription[1].imageUrl,
    date: promoDescription[1].date,
    discount: promoDescription[1].discount,
  ),
  PromoCard(
    title: promoDescription[2].title,
    image: promoDescription[2].imageUrl,
    date: promoDescription[2].date,
    discount: promoDescription[2].discount,
  ),
];

class ListCardPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Don\'t miss our promotions. Grab Now!',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        SizedBox(height: 14),
        listCard[0],
        SizedBox(height: 14),
        listCard[1],
        SizedBox(height: 14),
        listCard[2],
      ],
    );
  }
}

class PromoCard extends StatelessWidget {
  final String title;
  final String image;
  final String date;
  final int discount;
  PromoCard({this.title, this.image, this.date, this.discount});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: double.infinity,
          height: 140,
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment(0.1, 0.0),
                      colors: [Colors.black87, Colors.white54],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(14),
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      width: 166,
                      child: Text(
                        title.toUpperCase(),
                        style: GoogleFonts.lora(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(1, 1),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Last before $date',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: textPrimary.textPrimaryColor),
                        ),
                        SizedBox(height: 5),
                        Label(sentence: 'Discount up to $discount%'),
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
  }
}
