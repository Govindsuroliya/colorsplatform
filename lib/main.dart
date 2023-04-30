import 'package:colorsplatform/pages/homepage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ColorPlatform());
}

class ColorPlatform extends StatefulWidget {
  const ColorPlatform({super.key});

  @override
  State<ColorPlatform> createState() => _ColorPlatformState();
}

class _ColorPlatformState extends State<ColorPlatform> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "ColorPlatform",
    );
  }
}
