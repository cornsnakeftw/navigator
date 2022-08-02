import "package:flutter/material.dart";
import 'list_item.dart';

///step 1

class shadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  shadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: (color),
        title: Text('Shades'),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.pink[600], fontWeight: FontWeight.bold),
      ),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            color: accentShades.elementAt(index),
          );
        },
      ),
    );
  }
}
/// step 2