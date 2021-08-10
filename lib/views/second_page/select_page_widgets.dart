import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomGridView extends StatelessWidget {
  final Widget childTopLeft;
  final Widget childTopRight;
  final Widget childBottomLeft;
  final Widget childBottomRight;

  CustomGridView(
      {Key? key,
        required this.childTopLeft,
        required this.childTopRight,
        required this.childBottomLeft,
        required this.childBottomRight})
      : super(key: key);

  final paddingGrid = EdgeInsets.only(
    top: 30,
    left: 20,
    right: 20,
  );

  final paddingGrid2 = EdgeInsets.only(
    top: 20,
    bottom: 20,
    left: 20,
    right: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: paddingGrid,
          child: SizedBox(
            height: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: childTopLeft),
                SizedBox(width: 20),
                Expanded(child: childTopRight),
              ],
            ),
          ),
        ),
        Padding(
          padding: paddingGrid2,
          child: SizedBox(
            height: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: childBottomLeft),
                SizedBox(width: 20),
                Expanded(child: childBottomRight),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
