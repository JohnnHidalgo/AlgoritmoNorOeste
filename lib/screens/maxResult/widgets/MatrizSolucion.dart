import 'package:flutter/material.dart';
import 'package:noroeste/screens/maxResult/widgets/ResultSpace.dart';
class MatrizSolucion extends StatelessWidget{

  List<String> listaSolucion;
  int filas, columnas,cantidadElementos;

  MatrizSolucion(this.listaSolucion,this.filas, this.columnas, this.cantidadElementos);

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
            return ResultSpace(listaSolucion[index].toString());
          },
        )
    );
  }
}