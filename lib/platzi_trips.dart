import 'package:com/home_trips.dart';
import 'package:com/profile_trips.dart';
import 'package:com/search_trips.dart';
import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int _actualIndex = 0;

  final List<Widget> widgetsList = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      _actualIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: widgetsList[_actualIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: _actualIndex,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('')
          )
        ],),
      ),
    );
  }

}