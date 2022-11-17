import 'package:flutter/material.dart';
import 'package:space_drawer/custom_widgets/buildColorToolbar.dart';
import 'package:space_drawer/custom_widgets/buildCurrentPath.dart';
import 'package:space_drawer/custom_widgets/buildStrokeToolbar.dart';

class DrawingPage extends StatefulWidget {
  @override
  _DrawingPageState createState() => _DrawingPageState();
}

class _DrawingPageState extends State<DrawingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Stack(
        children: [
          buildCurrentPath(context),
          buildColorToolbar(context),
          buildStrokeToolbar(context),
        ],
      ),
    );
  }
}
