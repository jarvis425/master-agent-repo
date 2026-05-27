import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:shared_preferences/shared_preferences.dart';
class CalculationProvider extends Notifier<String> {
  List<CalculationModel> _history = [];
  String _expression = '';
  @override
  String build() {
    return _expression;
  }
  void appendExpression(String text) {
    _expression += text;
    notifyListeners();
  }
  void calculateResult() async {
    final parser = Parser();
    final expression = parser.parse(_expression);
    final result = expression.evaluate(EvaluationType.REAL, {
      'x': 0,
    });
    _history.add(CalculationModel(expression: _expression, result: result.toString()));
    _expression = result.toString();
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(Constants.CALCULATOR_HISTORY_KEY, _history.map((e) => e.expression).toList());
  }
}
final calculationProvider = Notifier<CalculationProvider, String>(
  () => CalculationProvider(),
);