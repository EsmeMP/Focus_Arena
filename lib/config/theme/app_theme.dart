import 'package:flutter/material.dart';
// oxFF PARA PONER HEXADECIMAL
const Color _customColor = Color.fromARGB(255, 238, 252, 255);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >=0 && selectedColor <= _colorThemes.length -1,
      'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}
