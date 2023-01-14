import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text("News", style: TextStyle(fontSize: 30, color: Colors.white))
      ),
    );
  }
}