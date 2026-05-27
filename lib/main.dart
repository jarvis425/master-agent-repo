import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _display = '';
  double _result = 0;
  String _operator = '';
  double _firstNumber = 0;
  double _secondNumber = 0;

  void _onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        _display = '';
        _result = 0;
        _operator = '';
        _firstNumber = 0;
        _secondNumber = 0;
      } else if (value == '=') {
        if (_operator == '+') {
          _result = _firstNumber + _secondNumber;
        } else if (_operator == '-') {
          _result = _firstNumber - _secondNumber;
        } else if (_operator == '*') {
          _result = _firstNumber * _secondNumber;
        } else if (_operator == '/') {
          if (_secondNumber != 0) {
            _result = _firstNumber / _secondNumber;
          } else {
            _display = 'Error';
          }
        }
        _display = _result.toString();
      } else if (['+', '-', '*', '/'].contains(value)) {
        _firstNumber = double.parse(_display);
        _operator = value;
        _display = '';
      } else {
        _display += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(
                _display,
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.2,
              children: [
                ElevatedButton(
                  onPressed: () => _onButtonPressed('7'),
                  child: Text('7'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('8'),
                  child: Text('8'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('9'),
                  child: Text('9'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('/'),
                  child: Text('/'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('4'),
                  child: Text('4'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('5'),
                  child: Text('5'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('6'),
                  child: Text('6'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('*'),
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('1'),
                  child: Text('1'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('2'),
                  child: Text('2'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('3'),
                  child: Text('3'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('-'),
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('0'),
                  child: Text('0'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('.'),
                  child: Text('.'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('='),
                  child: Text('='),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('+'),
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('C'),
                  child: Text('C'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalculatorApp();
  }
}

void main() {
  runApp(Calculator());
}