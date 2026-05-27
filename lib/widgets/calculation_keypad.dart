import 'package:flutter/material.dart';
import 'package:smart_calculator/providers/calculation_provider.dart';
class CalculationKeypad extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculationProvider = ref.watch(calculationProvider);
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.2,
        children: [
          CalculatorButton(
            text: '7',
            onPressed: () {
              calculationProvider.appendExpression('7');
            },
          ),
          CalculatorButton(
            text: '8',
            onPressed: () {
              calculationProvider.appendExpression('8');
            },
          ),
          CalculatorButton(
            text: '9',
            onPressed: () {
              calculationProvider.appendExpression('9');
            },
          ),
          CalculatorButton(
            text: '/',
            onPressed: () {
              calculationProvider.appendExpression('/');
            },
          ),
          CalculatorButton(
            text: '4',
            onPressed: () {
              calculationProvider.appendExpression('4');
            },
          ),
          CalculatorButton(
            text: '5',
            onPressed: () {
              calculationProvider.appendExpression('5');
            },
          ),
          CalculatorButton(
            text: '6',
            onPressed: () {
              calculationProvider.appendExpression('6');
            },
          ),
          CalculatorButton(
            text: '*',
            onPressed: () {
              calculationProvider.appendExpression('*');
            },
          ),
          CalculatorButton(
            text: '1',
            onPressed: () {
              calculationProvider.appendExpression('1');
            },
          ),
          CalculatorButton(
            text: '2',
            onPressed: () {
              calculationProvider.appendExpression('2');
            },
          ),
          CalculatorButton(
            text: '3',
            onPressed: () {
              calculationProvider.appendExpression('3');
            },
          ),
          CalculatorButton(
            text: '-',
            onPressed: () {
              calculationProvider.appendExpression('-');
            },
          ),
          CalculatorButton(
            text: '0',
            onPressed: () {
              calculationProvider.appendExpression('0');
            },
          ),
          CalculatorButton(
            text: '.',
            onPressed: () {
              calculationProvider.appendExpression('.');
            },
          ),
          CalculatorButton(
            text: '=',
            onPressed: () {
              calculationProvider.calculateResult();
            },
          ),
          CalculatorButton(
            text: '+',
            onPressed: () {
              calculationProvider.appendExpression('+');
            },
          ),
        ],
      ),
    );
  }
}