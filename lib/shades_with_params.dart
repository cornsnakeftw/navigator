import 'package:flutter/material.dart';
import 'package:navigator/shades_page.dart';

class ShadesWithParams extends StatelessWidget {
  const ShadesWithParams({super.key});

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;

    return shadesPage(
      color: data,
    );
  }
}
