import 'package:expansion_tile_example/ui/activities/home.dart';
import 'package:expansion_tile_example/utils/colors_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: ColorsPalette.primaryColor,
      cursorColor: ColorsPalette.primaryColor
    ),
    home: Home(title: 'Expansion Tile Example',),
  ));
}