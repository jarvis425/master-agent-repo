import 'package:flutter/material.dart';
import 'package:master_agent_repo/main.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              _display,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                CalculatorButton('7', () {
                  setState(() {
                    _display += '7';
                  });
                }),
                CalculatorButton('8', () {
                  setState(() {
                    _display += '8';
                  });
                }),
                CalculatorButton('9', () {
                  setState(() {
                    _display += '9';
                  });
                }),
                CalculatorButton('/', () {
                  setState(() {
                    _display += '/';
                  });
                }),
                CalculatorButton('4', () {
                  setState(() {
                    _display += '4';
                  });
                }),
                CalculatorButton('5', () {
                  setState(() {
                    _display += '5';
                  });
                }),
                CalculatorButton('6', () {
                  setState(() {
                    _display += '6';
                  });
                }),
                CalculatorButton('*', () {
                  setState(() {
                    _display += '*';
                  });
                }),
                CalculatorButton('1', () {
                  setState(() {
                    _display += '1';
                  });
                }),
                CalculatorButton('2', () {
                  setState(() {
                    _display += '2';
                  });
                }),
                CalculatorButton('3', () {
                  setState(() {
                    _display += '3';
                  });
                }),
                CalculatorButton('-', () {
                  setState(() {
                    _display += '-';
                  });
                }),
                CalculatorButton('0', () {
                  setState(() {
                    _display += '0';
                  });
                }),
                CalculatorButton('.', () {
                  setState(() {
                    _display += '.';
                  });
                }),
                CalculatorButton('C', () {
                  setState(() {
                    _display = '';
                  });
                }),
                CalculatorButton('+', () {
                  setState(() {
                    _display += '+';
                  });
                }),
                CalculatorButton('=', () {
                  try {
                    _result = _calculate(_display);
                    setState(() {
                      _display = _result.toString();
                    });
                  } catch (e) {
                    setState(() {
                      _display = 'Error';
                    });
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
  double _calculate(String expression) {
    try {
      return double.parse(expression);
    } catch (e) {
      try {
        return _calculateExpression(expression);
      } catch (e) {
        throw Exception('Invalid expression');
      }
    }
  }
  double _calculateExpression(String expression) {
    try {
      return Function.apply(_calculateOperation, _parseExpression(expression));
    } catch (e) {
      throw Exception('Invalid expression');
    }
  }
  List<double> _parseExpression(String expression) {
    List<double> numbers = [];
    List<String> operators = [];
    String currentNumber = '';
    for (int i = 0; i < expression.length; i++) {
      if (expression[i] == '+' || expression[i] == '-' || expression[i] == '*' || expression[i] == '/') {
        numbers.add(double.parse(currentNumber));
        operators.add(expression[i]);
        currentNumber = '';
      } else {
        currentNumber += expression[i];
      }
    }
    numbers.add(double.parse(currentNumber));
    return numbers;
  }
  double _calculateOperation(List<double> numbers, String operator) {
    switch (operator) {
      case '+':
        return numbers[0] + numbers[1];
      case '-':
        return numbers[0] - numbers[1];
      case '*':
        return numbers[0] * numbers[1];
      case '/':
        if (numbers[1] == 0) {
          throw Exception('Division by zero');
        }
        return numbers[0] / numbers[1];
      default:
        throw Exception('Invalid operator');
    }
  }
}
class CalculatorButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CalculatorButton(this.text, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
void main() {
  runApp(CalculatorApp());
}