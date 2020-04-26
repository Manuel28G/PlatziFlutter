import 'package:com/review.dart';
import 'package:com/utils/resources.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Review(getImageBaseFormat("androidDeveloper.jpeg"),
            "Manuel Goncalves","1 review 5 photos",
            "There is an amazin place in Sri Lanka"),
        Review(getImageBaseFormat("traveler.jpg"),
            "Varuna Yasa","3 review 2 photos",
            "There is an amazin place in Sri Lanka"),
        Review(getImageBaseFormat("traveler.jpg"),
            "Varuna Yasa","1 review 1 photos",
            "There is an amazin place in Sri Lanka"),
        Review(getImageBaseFormat("traveler.jpg"),
            "Varuna Yasa","0 review 3 photos",
            "There is an amazin place in Sri Lanka"),
      ],
    );
  }


}