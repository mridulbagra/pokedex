import 'package:flutter/material.dart';
import 'package:pokedex/search_screen.dart';

void main() {
  runApp(PokDex());
}

class PokDex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
    );
  }
}
