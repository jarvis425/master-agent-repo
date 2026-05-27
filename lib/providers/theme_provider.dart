import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThemeProvider extends Notifier<ThemeData> {
  @override
  ThemeData build() {
    return ThemeData(
      primarySwatch: Colors.blue,
    );
  }
}
final themeProvider = Notifier<ThemeProvider, ThemeData>(
  () => ThemeProvider(),
);