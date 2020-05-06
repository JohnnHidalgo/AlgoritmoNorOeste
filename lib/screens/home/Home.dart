import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:noroeste/screens/home/widgets/Matriz.dart';
import 'package:noroeste/screens/home/widgets/MaxButton.dart';
import 'package:noroeste/screens/home/widgets/MinButton.dart';
import 'package:noroeste/screens/home/widgets/TextNumberSpace.dart';
import 'package:noroeste/screens/home/widgets/TextSpace.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  var logger = Logger();
  static TextEditingController controllerFilas = TextEditingController();
  static TextEditingController controllerColumnas = TextEditingController();
  static TextEditingController controller1 = TextEditingController();
  static TextEditingController controller2 = TextEditingController();
  static TextEditingController controller3 = TextEditingController();
  static TextEditingController controller4 = TextEditingController();
  static TextEditingController controller5 = TextEditingController();
  static TextEditingController controller6 = TextEditingController();
  static TextEditingController controller7 = TextEditingController();
  static TextEditingController controller8 = TextEditingController();
  static TextEditingController controller9 = TextEditingController();
  static TextEditingController controller10 = TextEditingController();
  static TextEditingController controller11 = TextEditingController();
  static TextEditingController controller12 = TextEditingController();
  static TextEditingController controller13 = TextEditingController();
  static TextEditingController controller14 = TextEditingController();
  static TextEditingController controller15 = TextEditingController();
  static TextEditingController controller16 = TextEditingController();
  static TextEditingController controller17 = TextEditingController();
  static TextEditingController controller18 = TextEditingController();
  static TextEditingController controller19 = TextEditingController();
  static TextEditingController controller20 = TextEditingController();
  static TextEditingController controller21 = TextEditingController();
  static TextEditingController controller22 = TextEditingController();
  static TextEditingController controller23 = TextEditingController();
  static TextEditingController controller24 = TextEditingController();
  static TextEditingController controller25 = TextEditingController();
  static TextEditingController controller26 = TextEditingController();
  static TextEditingController controller27 = TextEditingController();
  static TextEditingController controller28 = TextEditingController();
  static TextEditingController controller29 = TextEditingController();
  static TextEditingController controller30 = TextEditingController();
  static TextEditingController controller31 = TextEditingController();
  static TextEditingController controller32 = TextEditingController();
  static TextEditingController controller33 = TextEditingController();
  static TextEditingController controller34 = TextEditingController();
  static TextEditingController controller35 = TextEditingController();
  static TextEditingController controller36 = TextEditingController();
  static TextEditingController controller37 = TextEditingController();
  static TextEditingController controller38 = TextEditingController();
  static TextEditingController controller39 = TextEditingController();
  static TextEditingController controller40 = TextEditingController();
  static TextEditingController controller41 = TextEditingController();
  static TextEditingController controller42 = TextEditingController();
  static TextEditingController controller43 = TextEditingController();
  static TextEditingController controller44 = TextEditingController();
  static TextEditingController controller45 = TextEditingController();
  static TextEditingController controller46 = TextEditingController();
  static TextEditingController controller47 = TextEditingController();
  static TextEditingController controller48 = TextEditingController();
  static TextEditingController controller49 = TextEditingController();

  var numFilas=0, numColumnas=0;
  int cantidadElementos;
  List<Widget> textSpaceItemList=[TextSpace(controller1),TextSpace(controller2),TextSpace(controller3),TextSpace(controller4),TextSpace(controller5),TextSpace(controller6),TextSpace(controller7),TextSpace(controller8),TextSpace(controller9),TextSpace(controller10),TextSpace(controller11),TextSpace(controller12),TextSpace(controller13),TextSpace(controller14),TextSpace(controller15),TextSpace(controller16),TextSpace(controller17),TextSpace(controller18),TextSpace(controller19),TextSpace(controller20),TextSpace(controller21),TextSpace(controller22),TextSpace(controller23),TextSpace(controller24),TextSpace(controller25),TextSpace(controller26),TextSpace(controller27),TextSpace(controller28),TextSpace(controller29),TextSpace(controller30),TextSpace(controller31),TextSpace(controller32),TextSpace(controller33),TextSpace(controller34),TextSpace(controller35),TextSpace(controller36),TextSpace(controller37),TextSpace(controller38),TextSpace(controller39),TextSpace(controller40),TextSpace(controller41),TextSpace(controller42),TextSpace(controller43),TextSpace(controller44),TextSpace(controller45),TextSpace(controller46),TextSpace(controller47),TextSpace(controller48),TextSpace(controller49)];
  int controladordeCircleBar =0;

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextNumberSpace(controllerFilas,'Filas'),
              ),
              Expanded(
                flex: 1,
                child: TextNumberSpace(controllerColumnas,'Columnas'),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: CupertinoButton.filled(
            child: Text('Generar Matriz'),
            onPressed: _verValor,
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            child: controladordeCircleBar == 0 ? Center(child: CircularProgressIndicator()): Matriz(numFilas,numColumnas,cantidadElementos,textSpaceItemList),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: MaxButton(numFilas,numColumnas,cantidadElementos,textSpaceItemList)
              ),
              Expanded(
                flex: 1,
                child: MinButton(numFilas,numColumnas,cantidadElementos,textSpaceItemList),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _verValor() {
    setState(() {
      String columnas =controllerColumnas.text;
      String filas = controllerFilas.text;
      numColumnas = int.parse(columnas)+2;
      numFilas = int.parse(filas)+2;
      cantidadElementos =numFilas*numColumnas;
      controladordeCircleBar=1;
    });
  }

}
