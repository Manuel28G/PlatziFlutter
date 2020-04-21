import 'package:com/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Review(),
        Review(),
        Review(),
        Review(),
        Review(),
        Review(),
      ],
    );
  }


}