import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noroeste/screens/home/Home.dart';

void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
            appBar: CupertinoNavigationBar(
              middle: Text('NorOeste'),
            ),
            body: Home()
        ),
      )
  );
}