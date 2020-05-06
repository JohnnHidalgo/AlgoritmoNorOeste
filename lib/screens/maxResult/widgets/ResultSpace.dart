import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultSpace extends StatelessWidget {

  String value;
//  Color color;
//  ResultSpace (this.value, this.color);
  ResultSpace (this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(value)
    );
  }


}