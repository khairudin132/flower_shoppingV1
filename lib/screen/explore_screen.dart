import 'package:flowershopping/model/flower_model.dart';
import 'package:flowershopping/widget/carousel.dart';
import 'package:flowershopping/widget/event.dart';
import 'package:flowershopping/widget/fact.dart';
import 'package:flowershopping/widget/promo_card.dart';
import 'package:flowershopping/widget/search_bar.dart';
import 'package:flowershopping/widget/staggered_image.dart';
import 'package:flowershopping/widget/suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox gapSection = SizedBox(height: 50);

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            gapSection,
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Welcome, Annie!',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 14, 20, 14),
              child: Text(
                'What kind of flower you want today?',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SearchBar(),
            gapSection,
            Fact(),
            gapSection,
            Carousel(
              isTitle: true,
              category: newFlower,
              numSold: false,
              title: 'Newly Arrived',
              carouselWidth: 180,
              carouselHeight: 250,
            ),
            gapSection,
            Carousel(
              isTitle: true,
              category: popularFlower,
              numSold: true,
              title: 'Popular Flower',
              carouselWidth: 180,
              carouselHeight: 250,
            ),
            gapSection,
            StaggeredImage(),
            gapSection,
            ListCardPromo(),
            gapSection,
            SuggestionCard(),
            gapSection,
            Event(),
            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
