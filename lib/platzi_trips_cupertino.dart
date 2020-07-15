
import 'package:com/profile_trips.dart';
import 'package:com/search_trips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrips(),
                );
                break;
            }
            return null;
          },
          tabBar: CupertinoTabBar(
            activeColor: Colors.cyanAccent,
              backgroundColor: Colors.white.withAlpha(50),
              items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text(""),
                  activeIcon: Icon(Icons.home, color: Colors.purple,)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text(""),
                  activeIcon: Icon(Icons.search, color: Colors.purple,)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  title: Text(""),
                  activeIcon: Icon(Icons.person, color: Colors.purple,)
              ),
            ]
          ),
        )
    );
  }

}