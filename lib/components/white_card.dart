import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhiteCard extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const WhiteCard({
    Key? key,
    required this.child,
    this.height = 0,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
      height: height == 0 ? Get.height : height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: child,
    );
  }
}
