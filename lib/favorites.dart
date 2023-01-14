import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text("Favorite", style: TextStyle(fontSize: 30, color: Colors.white))
      ),
    );
  }
}