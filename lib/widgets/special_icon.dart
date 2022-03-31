import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: must_be_immutable
class SpecialIcon extends StatelessWidget {
  SpecialIcon(
      {Key? key,
      required this.val,
      required this.iconData,
      required this.color,
      required this.doFunction})
      : super(key: key);
  final String val;
  final color;
  final IconData iconData;
  VoidCallback doFunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 5),
      child: InkWell(
        onTap: doFunction,
        child: Row(
          children: [
            Icon(
              iconData,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: val.text.make(),
            ),
          ],
        ),
      ),
    );
  }
}
