import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noroeste/screens/maxResult/widgets/MatrizSolucion.dart';

class MaxResult extends StatelessWidget {
  var numFilas, numColumnas;
  int cantidadElementos, costoTotal;
  List<String> listaSolucion;
  MaxResult(this.listaSolucion,this.numFilas, this.numColumnas, this.cantidadElementos, this.costoTotal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('NorOeste'),
      ),
      body: Column(  children: <Widget>[
        Expanded(
            flex: 1,
            child: Text('COSTO TOTAL')
        ),
        Expanded(
            flex: 1,
            child: Text(costoTotal.toString())
        ),

        Expanded(
          flex: 10,
          child: Container(
            child: MatrizSolucion(listaSolucion,numFilas,numColumnas,cantidadElementos),
          ),
        ),
      ],
      ),
    );
  }

}