import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Music", style: TextStyle(fontSize: 30, color: Colors.white))
      ),
    );
  }
}