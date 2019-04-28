import 'package:flutter/material.dart';
import 'dart:math';

const _heigth = 60.0;
const _padding = 6.0;
const _borderRadius = _heigth / 4;
const _iconSize = 35.0;
const _iconPadding = 6.0;
const _textSize = 18.0;

Color _getRandomColor() {
  var colors = [
    Colors.deepOrange,
    Colors.indigo,
    Colors.deepPurple,
    Colors.purple
  ];
  var random = new Random();
  return colors[random.nextInt(colors.length)];
}

class Category extends StatelessWidget {
  final String name;
  final Color color;
  final IconData iconData;
  Color detailsColor = _getRandomColor();

  Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.iconData})
      : assert(name != null),
        assert(color != null),
        assert(iconData != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: _heigth,
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: InkWell(
            onTap: () => print('Widget $name tapped'),
            splashColor: color,
            highlightColor: color,
            borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(_iconPadding),
                  child: Icon(
                    iconData,
                    size: _iconSize,
                    color: detailsColor,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: _textSize, color: detailsColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
