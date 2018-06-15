import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  createState() => new CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String _display = "0";
  double _result = 0.000000;

  String _op = "";
  double _input1 = 0.0;
  double _input2 = 0.0;

  void init() {
    _display = "";
    _result = 0.0;
    _op = "";
  }

  void _calculate(String input) {}

  Widget _buttons(String _input) {
    return new Expanded(
      child: new OutlineButton(
        color: Colors.redAccent[100],
        highlightColor: Colors.red[350],
        padding: new EdgeInsets.all(24.0),
        child: new Text(_input,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
        onPressed: () => _calculate(_input),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculatify'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
                alignment: Alignment.centerRight,
                decoration: new BoxDecoration(color: Colors.red[200]),
                padding: new EdgeInsets.all(35.0),
                child: new Text(
                  _display,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            new Container(
                alignment: Alignment.centerRight,
                decoration: new BoxDecoration(color: Colors.red[300]),
                padding: new EdgeInsets.all(25.0),
                child: new Text(
                  _result.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    _buttons("7"),
                    _buttons("8"),
                    _buttons("9"),
                    _buttons("/"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    _buttons("4"),
                    _buttons("5"),
                    _buttons("6"),
                    _buttons("x"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    _buttons("1"),
                    _buttons("2"),
                    _buttons("3"),
                    _buttons("-"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    _buttons("."),
                    _buttons("0"),
                    _buttons("00"),
                    _buttons("+"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    _buttons("CLEAR"),
                    _buttons("="),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*   void _calculate(String input) {
    List<String> _digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    List<String> _operators = ["x", "+", "/", "-"];

    if (input.contains("C")) {
      setState(() {
        initDiplayAndResult();
      });
    } else if (_digits.contains(input)) {
      setState(() {
        _display = _display + input;
        if (_op == "") _result = (_result * 10.0) + double.parse(input);
        if (_op == "x") _result = _result * double.parse(input);
        if (_op == "-") _result = _result - double.parse(input);
        if (_op == "+") _result = _result + double.parse(input);
        if (_op == "/") _result = _result / double.parse(input);
      });
    } else if (_operators.contains(input)) {
      setState(() {
        _display = _display + input;
        _op = input;
      });
    }
  } */

/*   Widget buildButtonRow(List<String> buttonRow) {
    String b1 = buttonRow.elementAt(0);
    String b2 = buttonRow.elementAt(1);
    String b3 = buttonRow.elementAt(2);
    String b4 = buttonRow.elementAt(3);

    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new FloatingActionButton(
            onPressed: () {
              _calculate(b1);
            },
            child: new Text('$b1', style: new TextStyle(fontSize: 18.0))),
        new FloatingActionButton(
            onPressed: () {
              _calculate(b2);
            },
            child: new Text('$b2', style: new TextStyle(fontSize: 18.0))),
        new FloatingActionButton(
            onPressed: () {
              _calculate(b3);
            },
            child: new Text('$b3', style: new TextStyle(fontSize: 18.0))),
        new FloatingActionButton(
            onPressed: () {
              _calculate(b4);
            },
            child: new Text('$b4', style: new TextStyle(fontSize: 18.0)),
            backgroundColor: Colors.red[300]),
      ],
    );
  } */
