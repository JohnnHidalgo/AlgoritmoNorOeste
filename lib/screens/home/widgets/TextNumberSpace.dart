import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextNumberSpace extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String holder;
  TextNumberSpace (this.controller, this.holder);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: CupertinoTextField(
              keyboardType: TextInputType.number,
              controller: controller,
              placeholder: holder,
          ),
    );
  }
}