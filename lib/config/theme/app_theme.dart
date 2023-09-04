import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF15AE90);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.blueGrey,
  Colors.deepPurple,
  Colors.purple,
  Colors.amber,
  Colors.lightGreen,
];

class AppTheme {
  final int selectedColorTheme;

  AppTheme({required this.selectedColorTheme})
      : assert(
            selectedColorTheme >= 0 && selectedColorTheme < _colorThemes.length,
            'Color themes must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColorTheme]);
  }
}
