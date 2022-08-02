import 'package:flutter/material.dart';
import 'home_page.dart';

class rgbPage extends StatefulWidget {
  const rgbPage({super.key});

  @override
  State<rgbPage> createState() => _rgbPageState();
}

void navigateToHomePage(BuildContext context) {
  Navigator.pushNamed(
    context,
    './index',
  );
}

class _rgbPageState extends State<rgbPage> {
  @override
  bool valueSwitch = false;
  int red = 1;
  int green = 1;
  int blue = 1;
  late Color Bgcolor;
  // Color Bgcolor = Color.fromRGBO(red,green,blue, 1.0);

  final myController = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RGB Slider'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              color: Colors.pink[600],
              fontWeight: FontWeight.bold),
        ),
        body: Column(
          children: [
            Slider(
                min: 0,
                max: 255,
                value: red.toDouble(),
                onChanged: (value) {
                  red = value.toInt();

                  setState(() {});
                }),
            Slider(
                min: 0,
                max: 255,
                value: green.toDouble(),
                onChanged: (value) {
                  green = value.toInt();

                  setState(() {});
                }),
            Slider(
                min: 0,
                max: 255,
                value: blue.toDouble(),
                onChanged: (value) {
                  blue = value.toInt();

                  setState(() {});
                }),
            Text(
              'Selected color ($red,$green,$blue)',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(100.0),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(red, green, blue, 1.0),
                  shape: BoxShape.circle),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                  setState(() {
                    Bgcolor = Color.fromRGBO(red, green, blue, 1.0);
                  });
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Row(
                        children: <Widget>[
                          Text('You have picked  '),
                          Container(
                            margin: EdgeInsets.all(1),
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Bgcolor, shape: BoxShape.circle),
                          )
                        ],
                      ));
                    },
                  );
                },
                child: Text('Select this color')),
          ],
        ));
  }
}
