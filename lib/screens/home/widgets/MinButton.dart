import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:noroeste/screens/home/widgets/TextSpace.dart';
import 'package:noroeste/screens/minResult/MinResult.dart';

class MinButton extends StatelessWidget {
  var numFilas, numColumnas;
  int cantidadElementos;
  List<Widget> textSpaceItemList;

  MinButton(this.numFilas, this.numColumnas, this.cantidadElementos, this.textSpaceItemList);
  List<String> listaOriginal = new List<String>();
  @override
  Widget build(BuildContext context) {
    return   CupertinoButton(
      child: Text('Minimizar'),
      onPressed: () {
        List<String> listaSolucion= calcularCost();
        List<List<int>> orimatriz = matrizOriginal();
        List<List<int>> solumatriz = matrizSolucion();
        int costoTotal = calcularCostoTotal(orimatriz,solumatriz);
        print(costoTotal);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MinResult(listaSolucion,numFilas, numColumnas, cantidadElementos,costoTotal)),
        );
      },
    );
  }

  List<List<int>> matrizOriginal(){

    int elContador=0;
    for (var i = 0; i < numFilas; i++) {
      for (var j = 0; j < numColumnas; j++) {
        TextSpace valor = textSpaceItemList.elementAt(elContador);
        listaOriginal.add(valor.controller.text);
      }
    }

    int contador=0;
    List<List<String>> matrixSolution = new List<List<String>>();
    for (var i = 0; i < numFilas; i++) {
      List<String> list = new List<String>();
      for (var j = 0; j < numColumnas; j++) {
        TextSpace valor = textSpaceItemList.elementAt(contador);
        list.add(valor.controller.text);
        contador++;
      }
      matrixSolution.add(list);
    }

    List<int> values = [7,8,9,10,11,13,14,15,16,17,19,20,21,22,23,25,26,27,28,29];
    var countValues=0;
    TextSpace valor = textSpaceItemList.elementAt(0);
    List<List<int>> matrix = new List<List<int>>();
    for (var i = 0; i < numFilas-1; i++) {
      List<int> list = new List<int>();
      for (var j = 0; j < numColumnas-1; j++) {
        TextSpace valor = textSpaceItemList.elementAt(values[countValues]);
        list.add(int.parse(valor.controller.text));
        countValues++;
      }
      matrix.add(list);
    }
    List<List<int>> matrixSolucion = matrix;

    return matrix;
  }
  List<List<int>> matrizSolucion(){
    List<int> values = [7,8,9,10,11,13,14,15,16,17,19,20,21,22,23,25,26,27,28,29];
    var countValues=0;
    TextSpace valor = textSpaceItemList.elementAt(0);
    List<List<int>> matrix = new List<List<int>>();
    for (var i = 0; i < numFilas-1; i++) {
      List<int> list = new List<int>();
      for (var j = 0; j < numColumnas-1; j++) {
        TextSpace valor = textSpaceItemList.elementAt(values[countValues]);
        list.add(int.parse(valor.controller.text));
        countValues++;
      }
      matrix.add(list);
    }
    List<List<int>> matrixSolucion = matrix;

    llenarCerosMatrix(matrixSolucion);
    seleccionarPosicion(matrixSolucion);
    return matrixSolucion;
  }

  int calcularCostoTotal(List<List<int>> matrizOriginal,List<List<int>> matrizSolucion){
    int costo=0;
    print('ORI${matrizOriginal}');
    print('SOLU${matrizSolucion}');

    for (int i=0;i<matrizOriginal[0].length-1;i++){
      for(int j=0;j<matrizOriginal.length;j++){

        int sub = matrizOriginal[i][j]*matrizSolucion[i][j];

        print('${matrizOriginal[i][j]} * ${matrizSolucion[i][j]} = ${sub}');
        costo =costo+ sub;
      }
    }
    return costo;

  }
  List<String> calcularCost(){

    int elContador=0;
    for (var i = 0; i < numFilas; i++) {
      for (var j = 0; j < numColumnas; j++) {
        TextSpace valor = textSpaceItemList.elementAt(elContador);
        listaOriginal.add(valor.controller.text);
      }
    }

    int contador=0;
    List<List<String>> matrixSolution = new List<List<String>>();
    for (var i = 0; i < numFilas; i++) {
      List<String> list = new List<String>();
      for (var j = 0; j < numColumnas; j++) {
        TextSpace valor = textSpaceItemList.elementAt(contador);
        list.add(valor.controller.text);
        contador++;
      }
      matrixSolution.add(list);
    }

    List<int> values = [7,8,9,10,11,13,14,15,16,17,19,20,21,22,23,25,26,27,28,29];
    var countValues=0;
    TextSpace valor = textSpaceItemList.elementAt(0);
    List<List<int>> matrix = new List<List<int>>();
    for (var i = 0; i < numFilas-1; i++) {
      List<int> list = new List<int>();
      for (var j = 0; j < numColumnas-1; j++) {
        TextSpace valor = textSpaceItemList.elementAt(values[countValues]);
        list.add(int.parse(valor.controller.text));
        countValues++;
      }
      matrix.add(list);
    }
    List<List<int>> matrixSolucion = matrix;

    print('esta?1 ${matrix}');
    llenarCerosMatrix(matrixSolucion);
    seleccionarPosicion(matrixSolucion);
    print('esta? ${matrixSolucion}');


    for (var i = 1; i < numFilas-1; i++) {
      for (var j = 1; j < numColumnas-1; j++) {
        matrixSolution[i][j]=matrixSolucion[i-1][j-1].toString();
      }
    }
    List<String> listaSolucion = new List<String>();
    for (var i = 0; i < numFilas; i++) {
      for (var j = 0; j < numColumnas; j++) {
        listaSolucion.add(matrixSolution[i][j]);
      }
    }
    return listaSolucion;
  }
  void llenarCerosMatrix(List<List<int>> matriz){
    for (var i = 0; i < numFilas-2; i++) {
      for (var j = 0; j < numColumnas-2; j++) {
        matriz[i][j]=0;
      }
    }
  }
  void seleccionarPosicion(List<List<int>> matriz){
    for (var i = 0; i < numFilas-2; i++) {
      if(matriz[numFilas-2][i]!=0){
        for (var j = 0; j < numColumnas-2; j++) {
          if(matriz[j][numColumnas-2]!=0){
            ceros(numFilas-2, i, j, numColumnas-2, matriz);
          }
        }
      }
    }
    ultimoCeros(numFilas-2,numColumnas-2,matriz);
  }
  void ceros(int a, int b, int x, int y,List<List<int>> matriz){
    if(matriz[a][b]<matriz[x][y]){
      matriz[x][b]=matriz[a][b];
      matriz[x][y]=matriz[x][y]-matriz[a][b];
      matriz[a][b]=0;
    }
    else{
      matriz[x][b]=matriz[x][y];
      matriz[a][b]=matriz[a][b]-matriz[x][y];
      matriz[x][y]=0;
    }
  }
  void ultimoCeros(int a, int b,List<List<int>> matriz){
    matriz[a-1][b-1]=matriz[a-1][b];
    matriz[a-1][b]=0;
  }
}
