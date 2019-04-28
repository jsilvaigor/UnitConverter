import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';

void main() => runApp(UnitConverter());

// TODO: Pass this information into your custom [Category] widget
const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.deepOrange;

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
            child: Category(
          color: _categoryColor,
          name: _categoryName,
          iconData: _categoryIcon,
        )),
      ),
    );
  }
}

