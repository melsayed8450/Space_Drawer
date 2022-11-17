import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_drawer/provider.dart';

Widget buildColorToolbar(BuildContext context) {
  return Positioned(
    top: 40.0,
    right: 10.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildColorButton(Colors.red, context),
        buildColorButton(Colors.blueAccent, context),
        buildColorButton(Colors.deepOrange, context),
        buildColorButton(Colors.green, context),
        buildColorButton(Colors.lightBlue, context),
        buildColorButton(Colors.black, context),
        buildColorButton(Colors.white, context),
      ],
    ),
  );
}

Widget buildColorButton(Color color, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: FloatingActionButton(
      mini: true,
      backgroundColor: color,
      child: Container(),
      onPressed: () {
        Provider.of<ProviderHelp>(context).selectedColor = color;
      },
    ),
  );
}
