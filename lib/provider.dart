import 'package:provider/provider.dart';
import 'package:space_drawer/helpers/drawn_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProviderHelp extends ChangeNotifier {
  BuildContext context;
  ProviderHelp({required this.context});
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line = DrawnLine([], Colors.black, 10);
  Color selectedColor = Colors.black;
  double selectedWidth = 5.0;

  void onPanStart(DragStartDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
    line = DrawnLine([point], selectedColor, selectedWidth);
    print(point);
    notifyListeners();
  }

  void onPanUpdate(DragUpdateDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
    List<Offset> path = List.from(line.path)..add(point);
    line = DrawnLine(path, selectedColor, selectedWidth);
    if (lines.length == 0) {
      lines.add(line);
    } else {
      lines[lines.length - 1] = line;
    }
    notifyListeners();
  }

  void onPanEnd(DragEndDetails details) {
    lines.add(line);
    notifyListeners();
  }
}
