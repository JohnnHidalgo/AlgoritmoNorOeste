import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSpace extends StatelessWidget {

  TextEditingController controller = TextEditingController();
  TextSpace (this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTextField(
        keyboardType: TextInputType.number,
        controller: controller,
        placeholder: 'Ingrese valor',
      ),
    );
  }

  void setController(TextEditingController controller){
    this.controller = controller;
  }

}