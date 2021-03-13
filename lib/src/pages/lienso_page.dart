import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class LiensoPage extends StatefulWidget {
  @override
  createState() {
    return _controlesState();
  }
}

class _controlesState extends State<LiensoPage> {
  int _positionY = 0;
  int _positionX = 0;
  Color _color1 = Colors.red;
  Color _color2 = Colors.red;
  Color _color3 = Colors.red;
  Color _color4 = Colors.red;
  Color _color5 = Colors.blue;
  Color _color6 = Colors.red;
  Color _color7 = Colors.red;
  Color _color8 = Colors.red;
  Color _color9 = Colors.red;
  int position = 0;


  void validacion(){
    if(_positionY>2 || _positionY<0 || _positionX>2 || _positionX<0)
    {
      showAlertDialog(context);
      Centro();
    }
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Te Saliste"),
      content: Text("Te reindicaremos"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void Centro() => {
        setState(() {
          _color1 = Colors.red;
          _color2 = Colors.red;
          _color3 = Colors.red;
          _color4 = Colors.red;
          _color5 = Colors.blue;
          _color6 = Colors.red;
          _color7 = Colors.red;
          _color8 = Colors.red;
          _color9 = Colors.red;
          _positionX = 1;
          _positionY = 1;
        }),
      };

  void Posiciones(){
    if (_positionX==1 && _positionY==1){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.blue;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==0 && _positionY==0)
    {
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.blue;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==0 && _positionY==1){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.blue;
      _color9 = Colors.red;

    }
    else if(_positionX==1 && _positionY==0){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.blue;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==1 && _positionY==2){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.blue;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==2 && _positionY==0){
      _color1 = Colors.blue;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==0 && _positionY==2){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.blue;

    }
    else if(_positionX==2 && _positionY==1){
      _color1 = Colors.red;
      _color2 = Colors.blue;
      _color3 = Colors.red;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
    else if(_positionX==2 && _positionY==2){
      _color1 = Colors.red;
      _color2 = Colors.red;
      _color3 = Colors.blue;
      _color4 = Colors.red;
      _color5 = Colors.red;
      _color6 = Colors.red;
      _color7 = Colors.red;
      _color8 = Colors.red;
      _color9 = Colors.red;

    }
  }

  void setInstructions () => {
    setState((){
      switch (position) {
        case 1:
          _positionY++;
          Posiciones();
          validacion();
          break;

        case 2:
          _positionY--;
          Posiciones();
          validacion();
          break;

        case 3:
          _positionX--;
          Posiciones();
          validacion();
          break;

        case 4:
          _positionX++;
          Posiciones();
          validacion();
          break;


      }
  })

  };



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('ExamenP1'),
        centerTitle: true,
      ),
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
           Container(
             padding: const EdgeInsets.all(8),
             color: _color1,

           ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color2,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color3,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color4,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color5,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color6,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color7,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color8,

            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: _color9,

            ),

            Container(
              padding: const EdgeInsets.all(8),
            ),
            FlatButton(
                child: Icon(Icons.arrow_upward), onPressed: () {
              setState(() {
                position = 4;
                setInstructions();
              });
            },),
            Container(
              padding: const EdgeInsets.all(8),
            ),
            FlatButton(
                child: Icon(Icons.arrow_back), onPressed: () {
              setState(() {
                position = 2;
                setInstructions();
              });
            },),
            FlatButton(
                child: Icon(Icons.control_camera_sharp), onPressed: Centro),
            FlatButton(
                child: Icon(Icons.arrow_forward), onPressed: () {
              setState(() {
                position = 1;
                setInstructions();
              });
            },),
            Container(
              padding: const EdgeInsets.all(8),
            ),
            FlatButton(
                child: Icon(Icons.arrow_downward), onPressed: () {
                position = 3;
                setInstructions();

            },),
          ]),

    );
  }
}
