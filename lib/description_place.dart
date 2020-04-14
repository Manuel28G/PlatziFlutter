import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  String descriptionDummy =  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a lectus eu risus rhoncus sagittis. Curabitur vestibulum nulla nibh, tempor egestas felis dapibus eu. Duis quis enim suscipit, tempus libero ac, luctus felis. Nullam pellentesque gravida varius. Morbi consequat eu arcu vitae aliquam. Ut posuere ex erat, vitae tincidunt libero elementum at. Sed posuere pellentesque lorem vulputate rhoncus. Integer interdum nulla vel tincidunt tempor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vitae lacus urna. Nulla ac nisl lacus. Phasellus condimentum aliquam felis, varius finibus augue consectetur sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam nibh quam, egestas vel ligula sed, ultricies rutrum justo. ";

  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(margin: EdgeInsets.only(
      top: 323.0,
      right:3.0,
    ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),);
    final star_empty = Container(margin: EdgeInsets.only(
      top: 323.0,
      right:3.0,
    ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),);

    final star = Container(margin: EdgeInsets.only(
      top: 323.0,
      right:3.0,
    ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),);

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),Row(
          children: <Widget>[
            for(var i =0 ; i < stars; i++)
              star,
            for(var i = stars; i < 5; i++)
              star_empty,
          ],
        )
      ],
    );


    final description = Container(
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black45
        ),
        textAlign: TextAlign.left,
      ),
      margin: EdgeInsets.only(
          top: 15.0,
          right: 20.0,
          left: 20.0
      ),
    );

    final content = Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );
    return content;
  }

}