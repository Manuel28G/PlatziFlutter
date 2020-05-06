import 'package:com/card_image_list.dart';
import 'package:com/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack(title: "Bienvenido"),
        CardImageList(),
      ],
    );
  }
}