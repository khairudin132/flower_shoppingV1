import 'package:flowershopping/widget/fact_slide.dart';
import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColorLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            child: Text(
              'Weekly Facts',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          FactSlide(),
        ],
      ),
    );
  }
}

//class FactCard extends StatelessWidget {
//  final FactDescription fact;
//  FactCard({this.fact});
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      width: ,
//      height: 100,
//      margin: EdgeInsets.symmetric(vertical: 26),
//      child: ListView.builder(
//        scrollDirection: Axis.horizontal,
//        itemCount: factCard.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius: BorderRadius.circular(10),
//                boxShadow: [
//                  BoxShadow(
//                    color: Color(0xFF757575),
//                    offset: Offset(1.0, 1.0),
//                    blurRadius: 4.0,
//                  ),
//                ]),
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(10),
//              child: Material(
//                child: InkWell(
//                  onTap: () {},
//                  child: Stack(
//                    children: [
//                      Column(
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: [
//                          Expanded(
//                            child: ClipRRect(
//                              borderRadius: BorderRadius.only(
//                                  topLeft: Radius.circular(10),
//                                  topRight: Radius.circular(10)),
//                              child: Image(
//                                image: AssetImage('images/bonzai.jpg'),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Container(
//                            margin: EdgeInsets.fromLTRB(14, 8, 0, 8),
//                            child: Row(
//                              children: [
//                                Icon(LineAwesomeIcons.comment),
//                                SizedBox(width: 14),
//                                Text('Comments'),
//                              ],
//                            ),
//                          )
//                        ],
//                      ),
//                      Column(
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: [
//                          Expanded(
//                            child: ClipRRect(
//                              borderRadius: BorderRadius.only(
//                                  topLeft: Radius.circular(10),
//                                  topRight: Radius.circular(10)),
//                              child: Opacity(
//                                opacity: 0.4,
//                                child: Container(
//                                  color: Colors.black,
//                                ),
//                              ),
//                            ),
//                          ),
//                          SizedBox(
//                            height: 40,
//                          ),
//                        ],
//                      ),
//                      Container(
//                        margin: EdgeInsets.all(18),
//                        child: Text(
//                          'asfdfasfasdfasdfsda',
//                          style: TextStyle(
//                            fontSize: 20,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.white,
//                            letterSpacing: 1,
//                            height: 1.3,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//}
