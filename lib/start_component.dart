import 'package:flutter/material.dart';

class StarComponent extends StatelessWidget{

  int stars;
  double marginTop;
  Container star_half;
  Container star_empty;
  Container star;

  StarComponent({@required this.stars,this.marginTop = 323.0}){
     star_half = Container(margin: EdgeInsets.only(
      top: marginTop,
      right:3.0,
    ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
     );
    star_empty = Container(margin: EdgeInsets.only(
      top: marginTop,
      right:3.0,
    ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),);

    star = Container(margin: EdgeInsets.only(
      top: marginTop,
      right:3.0,
    ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),);
  }



  @override
  Widget build(BuildContext context) {
    return Row(
    children: <Widget>[
      for(var i =0 ; i < stars; i++)
        star,
      for(var i = stars; i < 5; i++)
        star_empty,
    ],
  );
  }

}