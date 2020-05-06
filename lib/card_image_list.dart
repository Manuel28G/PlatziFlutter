import 'package:com/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/beach_palm.jpeg"),
          CardImage("assets/img/girl.jpg"),
          CardImage("assets/img/mountain.jpeg"),
          CardImage("assets/img/mountain_stars.jpeg"),
          CardImage("assets/img/people.jpg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }

}