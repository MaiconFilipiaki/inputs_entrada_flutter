import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valor = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
                value: _valor,
                min: 0,
                max: 10,
                label: _valor.toString(),
                divisions: 20,
                inactiveColor: Colors.deepPurple,
                activeColor: Colors.red,
                onChanged: (double result) {
                  print("Result: " + result.toString());
                  setState(() {
                    _valor = result;
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
