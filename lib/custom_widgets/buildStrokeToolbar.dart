import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_drawer/provider.dart';

Widget buildStrokeToolbar(BuildContext context) {
  return Positioned(
    bottom: 100.0,
    right: 10.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildStrokeButton(5.0, context),
        buildStrokeButton(10.0, context),
        buildStrokeButton(15.0, context),
      ],
    ),
  );
}

Widget buildStrokeButton(double strokeWidth, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Provider.of<ProviderHelp>(context).selectedWidth = strokeWidth;
    },
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: strokeWidth * 2,
        height: strokeWidth * 2,
        decoration: BoxDecoration(
            color: Provider.of<ProviderHelp>(context).selectedColor,
            borderRadius: BorderRadius.circular(20.0)),
      ),
    ),
  );
}
