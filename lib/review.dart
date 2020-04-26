import 'package:com/start_component.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage;
  String nameOfUser;
  String details ;
  String comment ;
  int numberOfStars;

  Review(this.pathImage,this.nameOfUser,this.details,this.comment,this.numberOfStars);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child:
      Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );


    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Row(
        children: <Widget>[
          Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
          new StarComponent(stars:numberOfStars,marginTop: 0.0),
        ],
      ),
    );

    final userName = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
            left: 20.0
        ),
        child: Text(
          nameOfUser,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0
          ),
        ),
      ),
    ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage))
      ),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }


}