import 'package:flutter/material.dart';
import 'package:smart_calculator/providers/calculation_provider.dart';
import 'package:smart_calculator/widgets/calculation_history.dart';
import 'package:smart_calculator/widgets/calculation_keypad.dart';
class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculationProvider = ref.watch(calculationProvider);
    return Scaffold(
      body: Column(
        children: [
          CalculationHistory(),
          CalculationKeypad(),
        ],
      ),
    );
  }
}