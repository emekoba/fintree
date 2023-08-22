import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double height;
  final double width;

  const Box({
    this.height = 10,
    this.width = 10,
    Key? key,
  }) : super(key: key);

  const Box.fromSize({
    required double height,
    required double width,
    Key? key,
    // ignore: prefer_initializing_formals
  })  : height = height,
        // ignore: prefer_initializing_formals
        width = width,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
