import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateWidget();
  }
}

class StateWidget extends State<FloatingActionButtonGreen>{
  IconData _floatingIcon = Icons.favorite_border;

  void actionPressed(){
    setState(() {
      if(_floatingIcon == Icons.favorite_border){
        _floatingIcon = Icons.favorite;
      }
      else{
        _floatingIcon = Icons.favorite_border;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: actionPressed,
      backgroundColor: Color(0xFF11DA53),
      mini: false,
      child: Icon(_floatingIcon),
    );
  }

}