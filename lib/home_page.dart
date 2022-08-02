import 'package:flutter/material.dart';
import 'package:navigator/rgb_slider.dart';
import 'package:navigator/shades_page.dart';
import 'list_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
  Navigator.push(
    ///direct navigation
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return shadesPage(color: color);
    }),
  );
}

void navigateToShadePageStatic(
  ///new
  BuildContext context,
  MaterialAccentColor color,
) {
  Navigator.pushNamed(
    ///dynamic Navigation
    context,
    './shades',
    arguments: color,
  );
}

void navigateToRGBPage(
  ///new
  BuildContext context,
) {
  Navigator.pushNamed(
    ///dynamic Navigation
    context,
    './rgb',
  );
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              color: Colors.pink[600],
              fontWeight: FontWeight.bold),
          title: Text('Colors')),
      body: ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              navigateToShadePage(
                context,
                Colors.accents.elementAt(index),
              );
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToRGBPage(
              context,
            );
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.brush)),
    );
  }
}
