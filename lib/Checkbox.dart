import 'package:flutter/material.dart';

class CheckboxEntrada extends StatefulWidget {
  @override
  _CheckboxEntradaState createState() => _CheckboxEntradaState();
}

class _CheckboxEntradaState extends State<CheckboxEntrada> {

  bool _valueCheck = false;
  bool _valueMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            value: _valueCheck,
            onChanged: (bool result) {
              setState(() {
                _valueCheck = result;
              });
            },
            title: Text("Comida brasileira"),
            subtitle: Text("A melhor comida do mundo"),
//            activeColor: Colors.red,
//            selected: true,
//            secondary: Icon(Icons.add_comment),
          ),
          CheckboxListTile(
            value: _valueMexicana,
            onChanged: (bool result) {
              setState(() {
                _valueMexicana = result;
              });
            },
            title: Text("Comida Mexicana"),
            subtitle: Text("A melhor comida do mundo"),
//            activeColor: Colors.red,
//            selected: true,
//            secondary: Icon(Icons.add_comment),
          ),
          RaisedButton(
            onPressed: () {
              print(
                  "Comida Brasileira: " + _valueCheck.toString() + " Comida Mexicana: " + _valueMexicana.toString()
              );
            },
            child: Text(
              "Salvar",
              style: TextStyle(
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}
