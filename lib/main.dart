import 'package:provider/provider.dart';
import 'package:space_drawer/drawing_page/drawing_page.dart';
import 'package:flutter/material.dart';
import 'package:space_drawer/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderHelp>(
      create: (context) => ProviderHelp(context: context),
      child: MaterialApp(
          title: 'Drawing App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: DrawingPage()),
    );
  }
}
