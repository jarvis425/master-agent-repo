import 'package:flutter/material.dart';
import 'package:smart_calculator/providers/calculation_provider.dart';
class CalculationHistory extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculationProvider = ref.watch(calculationProvider);
    return Expanded(
      child: ListView.builder(
        itemCount: calculationProvider.history.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(calculationProvider.history[index].expression),
            subtitle: Text(calculationProvider.history[index].result),
          );
        },
      ),
    );
  }
}