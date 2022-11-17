import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_drawer/helpers/sketcher.dart';
import 'package:space_drawer/provider.dart';

GestureDetector buildCurrentPath(BuildContext context) {
  return GestureDetector(
    onPanStart: Provider.of<ProviderHelp>(context).onPanStart,
    onPanUpdate: Provider.of<ProviderHelp>(context).onPanUpdate,
    onPanEnd: Provider.of<ProviderHelp>(context).onPanEnd,
    child: RepaintBoundary(
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CustomPaint(
          painter: Sketcher(lines: Provider.of<ProviderHelp>(context).lines),
        ),
      ),
    ),
  );
}
