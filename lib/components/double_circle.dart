import 'package:flutter/material.dart';

class DoubleCircle extends StatelessWidget {
  const DoubleCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white24, width: 1.5)),
        ),
        Container(
          height: 90,
          width: 90,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white24),
        ),
      ],
    );
  }
}
