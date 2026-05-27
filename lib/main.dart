import 'package:flutter/material.dart';
import 'package:smart_calculator/providers/theme_provider.dart';
import 'package:smart_calculator/screens/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeProvider = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Smart Calculator',
      theme: themeProvider.theme,
      home: HomeScreen(),
    );
  }
}