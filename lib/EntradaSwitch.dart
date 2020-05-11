import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUser = false;
  bool _escolhaConfig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
//          Switch(
//            value: _escolhaUser,
//            onChanged: (bool result){
//              setState(() {
//                _escolhaUser = result;
//              });
//            }
//          ),
//          Text("Receber notificação?")
          SwitchListTile(
              title: Text("Receber notificação?"),
              value: _escolhaUser,
              onChanged: (bool result){
                setState(() {
                  _escolhaUser = result;
                });
              }
          ),
          SwitchListTile(
              title: Text("Carregar imagens automaticamente"),
              value: _escolhaConfig,
              onChanged: (bool result){
                setState(() {
                  _escolhaConfig = result;
                });
              }
          ),
          RaisedButton(
            onPressed: () {
              print("Resultado: " + _escolhaUser.toString());
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

