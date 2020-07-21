import 'dart:math';

import 'package:flowershopping/model/flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredImage extends StatelessWidget {
  //TODO: nanti cari function untuk elakkan sama elemen muncul
  int _randomFlower() {
    int number;
    return number = Random().nextInt(decorationFlower.length);
  }

//  int getAnotherRandom(int index) {
//    return
//  }

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
                  'Decoration',
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'See the other customers decorated their home with our flowers.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        SizedBox(height: 14),
        Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) => new Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      decorationFlower[_randomFlower()].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        )
      ],
    );
  }
}
