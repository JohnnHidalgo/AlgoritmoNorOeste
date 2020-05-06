import 'package:flutter/material.dart';
class Matriz extends StatelessWidget{

  int filas, columnas,cantidadElementos;
  List<Widget> textSpaceItemList;

  Matriz(this.filas, this.columnas, this.cantidadElementos,this.textSpaceItemList);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
          itemCount: cantidadElementos,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnas,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0
          ),
          itemBuilder: (BuildContext context, int index) {
            final item = textSpaceItemList[index];
            return textSpaceItemList[index];
          },
        )
    );
  }
}