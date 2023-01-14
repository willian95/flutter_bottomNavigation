import 'package:bottomnavigation/favorites.dart';
import 'package:bottomnavigation/music.dart';
import 'package:bottomnavigation/news.dart';
import 'package:bottomnavigation/places.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = 'login';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget page = Favorites();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          switch(value){
            case 0:
              setState(() {
                page = Favorites();
              });
              break;
            case 1:
              setState(() {
                page = Music();
              });
              break;
            case 2:
              setState(() {
                page = Places();
              });
              break;
            case 3:
              setState(() {
                page = News();
              });
              break;
          }

        },
        items: [
          BottomNavigationBarItem(
            label: "Favorites",
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Music",
            icon: Icon(Icons.music_note),
            activeIcon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: "Places",
            icon: Icon(Icons.location_on),
            activeIcon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: "News",
            icon: Icon(Icons.library_books),
            activeIcon: Icon(Icons.library_books),
          ),
        ],
      ),
      body: page
    );
  }
}
