
import 'package:com/review_list.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  String _descriptionDummy =  "The Bahamas, known officially as the Commonwealth of The Bahamas, is a country within the Lucayan Archipelago in the West Indies. It is a member of the Commonwealth Realms under the monarchy of Queen Elizabeth II";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas",
                0,_descriptionDummy),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }

}